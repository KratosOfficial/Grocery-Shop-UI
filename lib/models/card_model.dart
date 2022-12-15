import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{

  final List _shopItem = [
    ["Avocado", "4.00", "assets/avocado.png", Colors.green],
    ["Banana", "2.50", "assets/banana.png", Colors.yellow],
    ["Chicken", "12.80", "assets/chicken.png", Colors.brown],
    ["Water", "1.00", "assets/water.png", Colors.blue],

  ];
  get shopItem => _shopItem;

  List _cartItem = [];

  get cartItem => _cartItem;
  void addCartItem(int index){
    _cartItem.add(_shopItem[index]);
    notifyListeners();
  }

  void removeCartItem(int index){
    _cartItem.removeAt(index);
    notifyListeners();
  }
  String calculateTotal(){
    double total = 0;
    for(int i = 0; i < _cartItem.length; i++){
      total += double.parse(_cartItem[i][1]);
    }
    return total.toStringAsFixed(2);
  }

}