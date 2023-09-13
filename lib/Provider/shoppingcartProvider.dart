import 'package:flutter/material.dart';
import 'package:provider_example/pages/shoppingmodel.dart';

class ShoppingCartProvider extends ChangeNotifier {
  List<shoppingModel> _cartItems = [];
  List<shoppingModel> get cartItem => _cartItems;

  //add item funcation
  void addItems(shoppingModel item) {
    _cartItems.add(item);
    notifyListeners();
  }

  //remove item
  void removeItems(shoppingModel items) {
    _cartItems.remove(items);
    notifyListeners();
  }
}
