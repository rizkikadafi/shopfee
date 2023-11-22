import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shopfee/viewmodels/coffee_controller.dart';
import 'package:shopfee/views/themes/color_scheme.dart';
import 'package:shopfee/views/widgets/coffee_card.dart';
import 'package:shopfee/views/widgets/skeleton.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CoffeeController coffeeController = Get.put(CoffeeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutral['light'],
      appBar: AppBar(
        backgroundColor: neutral['light'],
        elevation: 0,
        toolbarHeight: 80,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.center,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          "assets/img/search.svg",
                          color: primaryBrandColor,
                        ),
                      ),
                      hintText: "What would you like to drink today?",
                      hintStyle: TextStyle(color: textColor['disabled']),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryBrandColor!),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: textColor['disabled']!,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      )),
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset("assets/img/bell.svg"))
        ],
      ),
      body: Obx(() {
        return CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) {
                  if(coffeeController.coffees.isEmpty) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                        color: Colors.white, // Set the base color
                      ),
                    );
                  }
                  final coffee = coffeeController.coffees[index];
                  return CoffeeCard(
                    image: coffee.image,
                    name: coffee.name,
                    description: coffee.description,
                    rating: coffee.rating,
                    price: coffee.formattedSmallPrice,
                    action: () {
                      coffeeController.goToOrderPage(coffee);
                    },
                  );
              },
              childCount: coffeeController.coffees.length
            ))
          ],
        );
      }),
    );
  }
}