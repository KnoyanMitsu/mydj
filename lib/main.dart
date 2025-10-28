import 'package:flutter/material.dart';
import 'package:mydj/pages/simple_home_page.dart';

void main() {
  runApp(const MyDjTI3C());
}

class MyDjTI3C extends StatelessWidget {
  const MyDjTI3C({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyDJ - Jurnal Guru',
      home: const SimpleHomePage(title: 'Beranda',),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
    );
  }
}
