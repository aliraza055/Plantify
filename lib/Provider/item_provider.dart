import 'package:flutter/material.dart';

class ItemProvider with ChangeNotifier {
  List<int> _list=[];
  List<int> get selectedList => _list;
  void setList(int index){
    _list.add(index);
    notifyListeners();
  }
}