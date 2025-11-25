import 'package:flutter/material.dart';
import 'package:mydj/data/data_provider.dart';
import 'package:mydj/pages/login_pages.dart';
import 'package:mydj/pages/simple_home_page.dart';
import 'package:provider/provider.dart';

class StartupPage extends StatefulWidget {
  const StartupPage({super.key});

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  bool? _isLoggedIn;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    final DataProvider provider = context.read<DataProvider>();
    final isLoggedIn = await provider.isLoggedIn();

    if (!mounted) return;

    setState(() {
      _isLoggedIn = isLoggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoggedIn == null) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return _isLoggedIn!
        ? const SimpleHomePage(title: 'Beranda')
        : const LoginPages();
  }
}
