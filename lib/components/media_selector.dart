import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

enum MediaType { photo, video }

class MediaSelector extends StatefulWidget {
  final MediaType mediaType;
  const MediaSelector({super.key, this.mediaType = MediaType.photo});

  @override
  State<MediaSelector> createState() => _MediaSelectorState();
}

class _MediaSelectorState extends State<MediaSelector> {
  void _selectFromCamera() async {
    XFile? media = await _retrieveMedia(ImageSource.camera);
    if (media != null) {
      setState(() {
        _mediaPath = media.path;
      });
    }
  }

  void _selectFromGallery() async {
    XFile? media = await _retrieveMedia(ImageSource.gallery);
    if (media != null) {
      setState(() {
        _mediaPath = media.path;
      });
    }
  }

  void _deleteSelected() {
    setState(() {
      _mediaPath = '';
    });
  }

  Future<XFile?> _retrieveMedia(ImageSource source) async {
    final picker = ImagePicker();
    XFile? media;

    if (widget.mediaType == MediaType.photo) {
      media = await picker.pickImage(source: source);
    } else {
      media = await picker.pickVideo(source: source);
    }
    return media;
  }

  String _mediaPath = '';
  @override
  Widget _mediaPlaceholder() {
    Icon icon;
    String caption = '';
    Widget placeholderWidget;

    if (widget.mediaType == MediaType.photo) {
      icon = Icon(Icons.photo, size: 100, color: Colors.grey);
      caption = 'No photo';
      placeholderWidget = Image.file(
        File(_mediaPath),
        width: double.infinity,
        fit: BoxFit.fitWidth,
      );
    } else {
      icon = Icon(Icons.videocam_off, size: 100, color: Colors.grey);
      caption = 'No video';
      placeholderWidget = Column();
    }

    if (_mediaPath.isEmpty) {
      return SizedBox(
        height: 56,
        child: Row(children: [icon, SizedBox(width: 8), Text(caption)]),
      );
    } else {
      return SizedBox(width: double.infinity, child: placeholderWidget);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(child: _mediaPlaceholder()),
        Container(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          color: Colors.blue,
          child: Row(
            children: [
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    _selectFromCamera();
                  },
                  child: Icon(Icons.photo_camera),
                ),
              ),
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    _selectFromGallery();
                  },
                  child: Icon(Icons.photo_library),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    _deleteSelected();
                  },
                  child: Icon(Icons.delete),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
