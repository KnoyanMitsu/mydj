

import 'package:flutter/material.dart';

class LihatJurnalPages extends StatefulWidget{
  final String title;

  const LihatJurnalPages({super.key, required this.title});

  @override
  State<StatefulWidget> createState() {
    return _LihatJurnalPages();
  }
}

class _LihatJurnalPages extends State<LihatJurnalPages>
{
    @override 
    Widget build(BuildContext context){
      return Scaffold(
          appBar: AppBar(
            title: Center(child: Text(widget.title),),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary
          ),
      );
    }
}
