import 'package:flutter/material.dart';
import 'package:mydj/data/data_provider.dart';
import 'package:mydj/pages/simple_home_page.dart';
import 'package:provider/provider.dart';

void main() {
  MyDjTI3C app = const MyDjTI3C();
  runApp(
    ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: app,
      )
  );
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
