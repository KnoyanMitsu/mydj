import 'package:flutter/material.dart';

class BuatJurnalPages extends StatefulWidget {
  const BuatJurnalPages({super.key});

  @override
  State<BuatJurnalPages> createState() => _BuatJurnalPagesState();
}

class _BuatJurnalPagesState extends State<BuatJurnalPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kelas'),
              SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukan Kelas'
                ),
                onChanged: (value) => {},
              ),
              SizedBox(height: 10,),
              Text('Kelas'),
              SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukan Kelas'
                ),
                onChanged: (value) => {},
              ),
              SizedBox(height: 10,),
              Text('Jam ke-'),
              SizedBox(height: 5,),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pilih Jam'
                ),
                items: [
                  DropdownMenuItem(value: '1',child: Text('1'),),
                  DropdownMenuItem(value: '2',child: Text('2'),),
                  DropdownMenuItem(value: '3',child: Text('3'),),
                  DropdownMenuItem(value: '4',child: Text('4'),),
                  DropdownMenuItem(value: '5',child: Text('5'),),
                  DropdownMenuItem(value: '6',child: Text('6'),),
                  DropdownMenuItem(value: '7',child: Text('7'),),
                  DropdownMenuItem(value: '8',child: Text('8'),),
                ], 
                onChanged: (value) => {}),
              SizedBox(height: 10,),
              Text('Tujuan Pembelajaran'),
              SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukan Tujuan Pembelajaran'
                ),
                maxLines: 4,
                onChanged: (value) => {},
              ),
              SizedBox(height: 10,),
              Text('Kegiatan Pembelajaran'),
              SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukan Kegiatan Pembelajaran'
                ),
                maxLines: 4,
                onChanged: (value) => {},
              ),
              SizedBox(height: 10,),
              Text('Dimensi Profil Pelajar Pancasila'),
              SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
                onChanged: (value) => {},
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      )
    );
  }
}