import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TentangAplikasiPages extends StatefulWidget {
  const TentangAplikasiPages({super.key});
  
  @override
  State<TentangAplikasiPages> createState() => _TentangAplikasiPagesState();
}

class _TentangAplikasiPagesState extends State<TentangAplikasiPages> {
  final Uri uri = Uri.https("knoyan.vercel.app");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "My DJ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50
                  ),
                ),
                Text(
                  "Aplikasi Jurnal Harian Guru",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 30
                  ),
                ),
                Text("Version: 0.1 (Beta)"),
                Text("Dibuat oleh:"),
                Text("Fabian Ananda Merdana"),
                InkWell(
                  child: Text("https://knoyan.vercel.app", style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue
                  ),),
                  onTap: () => launchUrl(uri),
                )
              ],
            ),
          ),
    );
  }
}