import 'package:flutter/material.dart';
import 'package:mydj/data/data_provider.dart';
import 'package:mydj/data/jurnal.dart';
import 'package:provider/provider.dart';


class BuatJurnalPages extends StatefulWidget {
  const BuatJurnalPages({super.key});

  @override
  State<BuatJurnalPages> createState() => _BuatJurnalPagesState();
}



class _BuatJurnalPagesState extends State<BuatJurnalPages> {

  String nama = '';
  String kelas = '';
  String mapel = '';
  String tujuanPembelajaran = '';
  String kegiatanPembelajaran = '';
  String dimensiProfilPelajarPancasila = '';
  String topik = '';

  void _simpanJurnal(BuildContext context) {
    Jurnal j = Jurnal(
        nama: this.nama,
        kelas: this.kelas,
        mapel: this.mapel,
        tujuanPembelajaran: this.tujuanPembelajaran,
        kegiatanPembelajaran: this.kegiatanPembelajaran,
        dimensiProfilePelajarPancasila: this.dimensiProfilPelajarPancasila,
        materiTopikPembelajaran: this.topik);
    DataProvider dp = context.read<DataProvider>();
    dp.tambahJurnal(j);
  }

  Widget _textArea(String label, String info, String kontesk){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: info
          ),
          onChanged: (value) => {kontesk = value!},
          maxLines: 4,
        )
      ],
    );
  }

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
              Text('Nama'),
              SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukan Nama'
                ),
                onChanged: (value) => {nama = value},
              ),
              SizedBox(height: 10,),
              Text('Kelas'),
              SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukan Kelas'
                ),
                onChanged: (value) => {kelas = value},
              ),
              SizedBox(height: 10,),
              Text('Mata Pelajaran'),
              SizedBox(height: 5,),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pilih Mata Pelajaran'
                ),
                items: [
                    DropdownMenuItem(value: 'IPA', child: Text('IPA')),
                    DropdownMenuItem(value: 'IPS', child: Text('IPS')),
                    DropdownMenuItem(value: 'MATEMATIKA', child: Text('MATEMATIKA')),
                    DropdownMenuItem(value: 'BAHASA INDONESIA', child: Text('BAHASA INDONESIA')),
                    DropdownMenuItem(value: 'PKN', child: Text('PKN')),
                    DropdownMenuItem(value: 'BAHASA JAWA', child: Text('BAHASA JAWA')),
                    DropdownMenuItem(value: 'PENJAS', child: Text('PENJAS')),
                    DropdownMenuItem(value: 'SBK', child: Text('SBK')),
                ], 
                onChanged: (value) => {mapel = value!}),
              SizedBox(height: 10,),
              SizedBox(height: 5,),
              _textArea('Tujuan Pembelajaran', 'Masukkan Tujuan Pembelajaran', tujuanPembelajaran),
              SizedBox(height: 10,),
              _textArea('Materi/Topik Pembelajaran', 'Masukkan Materi/Topik Pembelajaran', topik),
              SizedBox(height: 5,),
              _textArea('Kegiatan Pembelajaran', 'Masukkan Kegiatan Pembelajaran',kegiatanPembelajaran),
              SizedBox(height: 10,),
              _textArea('Dimensi Profil Pelajar Pancasila', 'Masukkan Dimensi Profil Pelajar Pancasila',dimensiProfilPelajarPancasila),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () => {_simpanJurnal(context)}, child: Text('Simpan'))
            ],
          ),
        ),
      )
    );
  }
}