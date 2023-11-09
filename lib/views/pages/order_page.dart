import 'package:flutter/material.dart';
import 'package:shopfee/data/models/coffee_card_model.dart';

class OrderPage extends StatelessWidget {
  final Coffee selectedCoffee;

  const OrderPage({super.key, required this.selectedCoffee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(selectedCoffee.name),
      ),
    );
  }
}
