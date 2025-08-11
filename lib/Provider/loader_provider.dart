import 'package:flutter/material.dart';

class LoaderProvider with ChangeNotifier {
  bool _loading=false;
  bool get loading => _loading;
  void setLoading(bool value){
    _loading=value;
    notifyListeners();
  }
}