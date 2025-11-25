import 'package:flutter/material.dart';
import 'package:mydj/components/password_field.dart';
import 'package:mydj/data/data_provider.dart';
import 'package:mydj/pages/simple_home_page.dart';
import 'package:provider/provider.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  String namaPengguna = '';
  String sandi = '';

  Future<void> login(BuildContext context) async {
    final DataProvider provider = context.read<DataProvider>();
    if (namaPengguna == 'guru' && sandi == 'guru') {
      await provider.saveLoginInfo(namaPengguna, sandi);

      if (context.mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SimpleHomePage(title: 'Beranda'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyDJ - Welcome'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Log-In',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text('Nama Pengguna:'),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (val) {
                    setState(() {
                      namaPengguna = val;
                    });
                  },
                ),
                const SizedBox(height: 20),
                const Text('Password:'),
                PasswordField(
                  onChanged: (value) {
                    setState(() {
                      sandi = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () => login(context),
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
