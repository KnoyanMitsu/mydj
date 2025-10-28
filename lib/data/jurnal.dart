

class Jurnal {
  final DateTime _createdAt;
  String kelas;
  String nama;
  String mapel;
  int jam;
  String tujuanPembelajaran;
  String materiTopikPembelajaran;
  String kegiatanPembelajaran;
  String dimensiProfilePelajarPancasila;

  Jurnal({
    this.nama= '',
    this.kelas= '',
    this.mapel= '',
    this.jam= 0,
    this.tujuanPembelajaran= '',
    this.materiTopikPembelajaran= '',
    this.kegiatanPembelajaran= '',
    this.dimensiProfilePelajarPancasila= ''
  }) : _createdAt = DateTime.now();


  DateTime get createAt => _createdAt;
}