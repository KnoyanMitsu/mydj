import 'package:flutter/material.dart';

class TentangAplikasiPages extends StatefulWidget {
  const TentangAplikasiPages({super.key});

  @override
  State<TentangAplikasiPages> createState() => _TentangAplikasiPagesState();
}

class _TentangAplikasiPagesState extends State<TentangAplikasiPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
    );
  }
}