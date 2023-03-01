import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier
{
  double i=0;

  void Increament(){
    i++;
    notifyListeners();
  }
  void Decreament(){
    i--;
    notifyListeners();
  }
  void multi2(){
    i=i*2;
    notifyListeners();
  }
  void multi3(){
    i=i*3;
    notifyListeners();
  }
  void multi4(){
    i=i*4;
    notifyListeners();
  }
  void multi6(){
    i=i*6;
    notifyListeners();
  }
  void multi8(){
    i=i*8;
    notifyListeners();
  }
  void reset(){
    i=0;
    notifyListeners();
  }
}