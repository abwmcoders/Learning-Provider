import 'package:flutter/material.dart';

class ShooppingCart with ChangeNotifier {
  List<String> shopopingCart = ["Shoes", "Shirts", "Caps", "Boots"];


  int get count => shopopingCart.length;
  List<String> get cart => shopopingCart;

  void addItem(String item){
    shopopingCart.add(item);
    notifyListeners();
  }
  void removeItem(String item){
    shopopingCart.remove(item);
    notifyListeners();
  }
}