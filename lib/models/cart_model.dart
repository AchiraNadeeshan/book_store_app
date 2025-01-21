import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<Map<String, dynamic>> _cartItems = [];

  List<Map<String, dynamic>> get cartItems => _cartItems;

  void addToCart(Map<String, dynamic> book) {
    final index =
        _cartItems.indexWhere((item) => item['title'] == book['title']);
    if (index == -1) {
      _cartItems.add({
        ...book,
        'quantity': 1, // Add quantity if it's not provided
      });
    } else {
      _cartItems[index]['quantity'] += 1;
    }
    notifyListeners();
  }

  void removeFromCart(String title) {
    _cartItems.removeWhere((item) => item['title'] == title);
    notifyListeners();
  }

  void updateQuantity(String title, int delta) {
    final index = _cartItems.indexWhere((item) => item['title'] == title);
    if (index != -1) {
      _cartItems[index]['quantity'] += delta;
      if (_cartItems[index]['quantity'] <= 0) {
        removeFromCart(title);
      } else {
        notifyListeners();
      }
    }
  }

  double get totalPrice => _cartItems.fold(
        0,
        (total, item) => total + (item['price'] * item['quantity']),
      );
}
