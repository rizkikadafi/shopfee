import 'package:flutter/material.dart';
import 'package:shopfee/viewmodels/quantity_controller.dart';
import 'package:shopfee/views/themes/color_scheme.dart';

class CoffeeQuantityWidget extends StatefulWidget {
  final QuantityController controller;
  const CoffeeQuantityWidget({super.key, required this.controller});

  @override
  State<CoffeeQuantityWidget> createState() => _CoffeeQuantityWidgetState();
}

class _CoffeeQuantityWidgetState extends State<CoffeeQuantityWidget> {
  int quantity = 1;

  void increment() {
    setState(() {
      widget.controller.setQuantity(quantity++);
    });
  }

  void decrement() {
    setState(() {
      if (quantity > 1) {
        widget.controller.setQuantity(quantity--);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1,
            color: primaryBrandColor!,
          )),
      child: Row(
        children: [
          IconButton(
              onPressed: decrement,
              icon: const Icon(
                Icons.remove,
              )),
          Text(quantity.toString()),
          IconButton(onPressed: increment, icon: const Icon(Icons.add))
        ],
      ),
    );
  }
}
