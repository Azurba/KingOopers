import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum PageState{
  normal,
  productDetailOpen,
  cartOpen
}

class GroceryState with ChangeNotifier{
  //initial state
  PageState pageState = PageState.normal;

  //functions to change states
  void switchNormal() {
    pageState = PageState.normal;
    notifyListeners();
  }
  void switchProductDetail() {
    pageState = PageState.normal;
    notifyListeners();
  }
  void switchCart() {
    pageState = PageState.cartOpen;
    notifyListeners();
  }
}