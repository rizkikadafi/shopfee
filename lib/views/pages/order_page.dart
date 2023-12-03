import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shopfee/data/models/cart_item_model.dart';
import 'package:shopfee/data/models/coffee_card_model.dart';
import 'package:shopfee/viewmodels/bottomsheet_order_controller.dart';
import 'package:shopfee/viewmodels/cart_controller.dart';
import 'package:shopfee/viewmodels/quantity_controller.dart';
import 'package:shopfee/views/themes/color_scheme.dart';
import 'package:shopfee/views/widgets/add_order_bottom_sheet.dart';
import 'package:shopfee/views/widgets/quantity_widget.dart';

class OrderPage extends StatefulWidget {
  final Coffee selectedCoffee;

  const OrderPage({super.key, required this.selectedCoffee});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  CartController cartController = Get.put(CartController());
  BottomSheetOrderController orderController = BottomSheetOrderController();
  QuantityController quantityController =
      QuantityController(ValueNotifier<int>(1));


  void addToCart(BuildContext context) {
    final CartItem cartItem = CartItem(
      coffee: widget.selectedCoffee,
      quantity: quantityController.quantity.value,
    );

    cartController.addToCart(cartItem);

    Get.snackbar(
      'Added to Cart',
      '${widget.selectedCoffee.name} added to your cart.',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }
  @override
  void initState() {
    orderController.price.value = widget.selectedCoffee.smallPrice;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: textColor['heading'],
        title: const Text("Customize Order"),
        backgroundColor: neutral['light'],
      ),
      body: Stack(
        children: [
          Positioned(
            top: -60,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: neutral['medium'],
              clipBehavior: Clip.none,
              child: Image.network(
                widget.selectedCoffee.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width - 30,
            left: 30,
            right: 30,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: neutral['light'],
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.1),
                        offset: const Offset(-3, 4),
                        blurRadius: 36,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              "Coffee",
                              style: TextStyle(
                                color: primaryBrandColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.selectedCoffee.name,
                                style: TextStyle(
                                  color: textColor['heading'],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                widget.selectedCoffee.formattedSmallPrice,
                                style: TextStyle(
                                  color: textColor['heading'],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      widget.selectedCoffee.description,
                                      style: TextStyle(
                                        color: textColor['paragraph'],
                                      ),
                                    ),
                                  ),
                                ),
                                CoffeeQuantityWidget(
                                    controller: quantityController),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/img/star.svg"),
                              Text("${widget.selectedCoffee.rating}")
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
      bottomSheet: AddOrderBottomSheet(
        controller: orderController,
        quantityController: quantityController,
        onAddToCart: () => addToCart(context),
      ),
    );
  }
}

// class OrderPage extends StatelessWidget {
//   final Coffee selectedCoffee;

//   OrderPage({super.key, required this.selectedCoffee});

//   BottomSheetOrderController orderController = BottomSheetOrderController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         foregroundColor: textColor['heading'],
//         title: const Text("Customize Order"),
//         backgroundColor: neutral['light'],
//       ),
//       body: Stack(
//         children: [
//           Positioned(
//             top: -60,
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//               color: neutral['medium'],
//               clipBehavior: Clip.none,
//               child: Image.network(
//                 selectedCoffee.image,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           Positioned(
//             top: MediaQuery.of(context).size.width - 30,
//             left: 30,
//             right: 30,
//             child: Column(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     color: neutral['light'],
//                     borderRadius: BorderRadius.circular(8),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0xff000000).withOpacity(0.1),
//                         offset: const Offset(-3, 4),
//                         blurRadius: 36,
//                         spreadRadius: 2,
//                       )
//                     ],
//                   ),
//                   child: Padding(
//                       padding: const EdgeInsets.all(15),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(bottom: 10),
//                             child: Text(
//                               "Coffee",
//                               style: TextStyle(
//                                 color: primaryBrandColor,
//                                 fontSize: 16,
//                               ),
//                             ),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 selectedCoffee.name,
//                                 style: TextStyle(
//                                   color: textColor['heading'],
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20,
//                                 ),
//                               ),
//                               Text(
//                                 selectedCoffee.formattedSmallPrice,
//                                 style: TextStyle(
//                                   color: textColor['heading'],
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 10),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Flexible(
//                                   flex: 2,
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(right: 10),
//                                     child: Text(
//                                       selectedCoffee.description,
//                                       style: TextStyle(
//                                         color: textColor['paragraph'],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 const CoffeeQuantityWidget(),
//                               ],
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               SvgPicture.asset("assets/img/star.svg"),
//                               Text("${selectedCoffee.rating}")
//                             ],
//                           ),
//                           // Padding(
//                           //   padding: const EdgeInsets.symmetric(vertical: 10),
//                           //   child: Divider(
//                           //     thickness: 2,
//                           //     indent: 5,
//                           //     endIndent: 5,
//                           //     color: brand[400],
//                           //   ),
//                           // ),
//                           // Column(
//                           // crossAxisAlignment: CrossAxisAlignment.start,
//                           //   children: [
//                           //     Text(
//                           //       "Customize",
//                           //       style: TextStyle(
//                           //         color: textColor['heading'],
//                           //         fontWeight: FontWeight.bold,
//                           //         fontSize: 16,
//                           //       ),
//                           //     ),
//                           //     const CustomMenu(
//                           //         customizeData: "Size",
//                           //         optionMenu: ["Small", "Medium", "Large"]),
//                           //   ],
//                           // )
//                         ],
//                       )),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//       bottomSheet: AddOrderBottomSheet(
//         controller: orderController,
//       ),
//     );
//   }
// }
