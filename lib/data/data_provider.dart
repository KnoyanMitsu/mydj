

import 'package:flutter/material.dart';
import 'package:mydj/data/jurnal.dart';

class DataProvider extends ChangeNotifier {
  final List<Jurnal> _JurnalTersimpan = [];
  DataProvider();


  void tambahJurnal(Jurnal jurnal){
    _JurnalTersimpan.add(jurnal);
    notifyListeners();
  }

  List<Jurnal> get jurnalTersimpan {
    return List.unmodifiable(_JurnalTersimpan);
  }
}