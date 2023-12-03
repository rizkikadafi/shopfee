import 'package:flutter/material.dart';

class QuantityController {
  final ValueNotifier<int> quantity;

  QuantityController(this.quantity);

  void setQuantity(int value) {
    quantity.value = value;
  }
}
