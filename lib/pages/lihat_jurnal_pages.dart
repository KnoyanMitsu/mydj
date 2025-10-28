

import 'package:flutter/material.dart';
import 'package:mydj/data/data_provider.dart';
import 'package:mydj/data/jurnal.dart';
import 'package:provider/provider.dart';

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
      final List<Jurnal> daftarJurnal =
      context.watch<DataProvider>().jurnalTersimpan;
      return Scaffold(
          appBar: AppBar(
            title: Center(child: Text(widget.title),),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary
          ),
          body: Padding(padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context,index) => ListTile(
                    title: Text(daftarJurnal[index].kelas),
                    subtitle: Text(daftarJurnal[index].mapel),
                    trailing:   Text(daftarJurnal[index]
                                  .createAt
                                  .toString()),
                    onTap: () {},
                  ), 
                  separatorBuilder: (context,index) => const Divider(), 
                  itemCount: daftarJurnal.length
                  )
                )
            ],
          ),
          ),
      );
    }
}
