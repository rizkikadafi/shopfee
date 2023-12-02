import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopfee/data/models/coffee_card_model.dart';
import 'package:shopfee/views/themes/color_scheme.dart';
import 'package:shopfee/views/widgets/quantity_widget.dart';

class OrderPage extends StatelessWidget {
  final Coffee selectedCoffee;

  const OrderPage({super.key, required this.selectedCoffee});

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
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: neutral['medium'],
              clipBehavior: Clip.none,
              child: Image.network(
                selectedCoffee.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width,
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
                        color: const Color(0xff000000).withOpacity(0.57),
                        offset: const Offset(-3, 4),
                        blurRadius: 36,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Coffee",
                            style: TextStyle(
                              color: primaryBrandColor,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                selectedCoffee.name,
                                style: TextStyle(
                                  color: textColor['heading'],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                selectedCoffee.formattedSmallPrice,
                                style: TextStyle(
                                  color: textColor['heading'],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                flex: 2,
                                child: Text(
                                  selectedCoffee.description,
                                  style: TextStyle(
                                    color: textColor['paragraph'],
                                  ),
                                ),
                              ),
                              const CoffeeQuantityWidget(),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/img/star.svg"),
                              Text("${selectedCoffee.rating}")
                            ],
                          ),
                          const Divider(),
                          Column(
                            children: [
                              Text(
                                "Customize",
                                style: TextStyle(
                                  color: textColor['heading'],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
