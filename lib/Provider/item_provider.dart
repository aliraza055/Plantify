import 'package:flutter/material.dart';

class ItemProvider with ChangeNotifier {
  List<int> _list=[];
  List<int> get selectedList => _list;
  void addList(int index){
    _list.add(index);
    notifyListeners();
  }
    void removeList(int index){
    _list.remove(index);
    notifyListeners();
  }
}