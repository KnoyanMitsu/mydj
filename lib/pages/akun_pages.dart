import 'package:flutter/material.dart';
import 'package:mydj/components/password_field.dart';
import 'package:mydj/data/login_info.dart';
import 'package:mydj/pages/login_pages.dart';

class AkunPages extends StatefulWidget {
  final String title;
  const AkunPages({super.key, required this.title});

  @override
  State<AkunPages> createState() => _AkunPagesState();
}

class _AkunPagesState extends State<AkunPages> {
  _openLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPages()),
    );
  }

  Future<void> _logout(BuildContext context) async {
    await LoginInfo.deleteFromSharedPreference();
    _openLoginPage(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ganti Sandi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(thickness: 2),
            SizedBox(height: 10),
            Text('Sandi Saat ini'),
            SizedBox(height: 10),
            PasswordField(),
            SizedBox(height: 10),
            Text('Sandi Baru'),
            SizedBox(height: 10),
            PasswordField(),
            SizedBox(height: 10),
            Text('Konfirmasi Sandi Baru'),
            SizedBox(height: 10),
            PasswordField(),
            SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 10 * 4,
              child: FilledButton(onPressed: () => {}, child: Text('Simpan')),
            ),
            SizedBox(height: 30),
            Text(
              'Keluar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            SizedBox(
              width: double.infinity,
              height: 10 * 4,
              child: FilledButton(
                onPressed: () => {_logout(context)},
                child: Text('Keluar Dari Aplikasi'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
