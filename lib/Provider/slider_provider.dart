import 'package:flutter/material.dart';

class SliderProvider with ChangeNotifier {
  double opac=0.5;
  double get opacity => opac;
  void setOpacity(double value){
    opac=value;
    notifyListeners();

  }

}