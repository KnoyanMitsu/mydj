import 'package:flutter/material.dart';
import 'package:mydj/pages/akun_pages.dart';
import 'package:mydj/pages/buat_jurnal_pages.dart';
import 'package:mydj/pages/lihat_jurnal_pages.dart';
import 'package:mydj/pages/tentang_aplikasi_pages.dart';

class SimpleHomePage extends StatefulWidget {
  final String title;

  const SimpleHomePage({super.key, required this.title});

  @override
  State<StatefulWidget> createState()
  {
    return _SimpleHomePageState();
  }
}



class _SimpleHomePageState extends State<SimpleHomePage>
{

    void _openLihatJurnalPages(BuildContext context){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LihatJurnalPages(title: 'Lihat Jurnal'),));
    }
    void _openLoginPages(BuildContext context){
      Navigator.push(context, MaterialPageRoute(builder: (context) => AkunPages(title: '',),));
    }
    void _openBuatJurnalPages(BuildContext context){
      Navigator.push(context, MaterialPageRoute(builder: (context) => BuatJurnalPages(),));
    }
    void _openTentangAplikasiPages(BuildContext context){
      Navigator.push(context, MaterialPageRoute(builder: (context) => TentangAplikasiPages(),));
    }
    @override 
    Widget build(BuildContext context){
      return Scaffold(
          appBar: AppBar(
            title: Center(child: Text(widget.title),),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo_left.png'),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () => {_openLihatJurnalPages(context)}, child: Text('Lihat Jurnal')),
                    SizedBox(width: 20),
                    ElevatedButton(onPressed: () => {_openBuatJurnalPages(context)}, child: Text('Buat Jurnal'))
                  ],
                ),
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () => {_openLoginPages(context)}, child: Text('Akun')),
                    SizedBox(width: 20),
                    ElevatedButton(onPressed: () => {_openTentangAplikasiPages(context)}, child: Text('Tentang Aplikasi'))
                  ],
                )
              ],
            ),
          ),
      );
    }
}