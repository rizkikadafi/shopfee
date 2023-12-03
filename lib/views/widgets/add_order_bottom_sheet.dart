import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shopfee/viewmodels/bottomsheet_order_controller.dart';
import 'package:shopfee/viewmodels/quantity_controller.dart';
import 'package:shopfee/views/themes/color_scheme.dart';

class AddOrderBottomSheet extends StatefulWidget {
  final BottomSheetOrderController controller;
  final QuantityController quantityController;
  final VoidCallback onAddToCart;

  const AddOrderBottomSheet({
    super.key, 
    required this.controller, 
    required this.quantityController,
    required this.onAddToCart
  });

  @override
  State<AddOrderBottomSheet> createState() => _AddOrderBottomSheetState();
}

class _AddOrderBottomSheetState extends State<AddOrderBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.quantityController.quantity,
        builder: (context, value, child) {
          return BottomSheet(
              backgroundColor: Colors.transparent,
              onClosing: () {},
              builder: (BuildContext context) {
                return SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Total",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                formattedPrice(
                                    widget.controller.price.value * value),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(primaryBrandColor),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ))),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("test")));
                            widget.onAddToCart();
                            Get.back();
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text("Add Order"),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              });
        });
  }

  String formattedPrice(int price) {
    return NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format(price);
  }
}
