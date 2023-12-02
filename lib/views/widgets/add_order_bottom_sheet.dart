import 'package:flutter/material.dart';
import 'package:shopfee/views/themes/color_scheme.dart';

class AddOrderBottomSheet extends StatefulWidget {
  const AddOrderBottomSheet({super.key});

  @override
  State<AddOrderBottomSheet> createState() => _AddOrderBottomSheetState();
}

class _AddOrderBottomSheetState extends State<AddOrderBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total"),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                        "Rp25.000",
                        style: TextStyle(
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
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ))),
                    onPressed: () {},
                    child: const Text("Add Order"),
                  )
                ],
              ),
            ),
          );
        });
  }
}
