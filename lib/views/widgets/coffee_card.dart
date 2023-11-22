import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopfee/views/themes/color_scheme.dart';

typedef VoidCallback = void Function();

class CoffeeCard extends StatelessWidget {
  final String image, name, description, price;
  final double rating;
  final VoidCallback action;

  const CoffeeCard(
      {super.key,
      required this.image,
      required this.name,
      required this.description,
      required this.rating,
      required this.price,
      required this.action});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.network(image),
          Positioned(
            bottom: -10,
            left: 2,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: neutral['light'],
                boxShadow: [
                  BoxShadow(
                      color: neutral['dark']!, spreadRadius: 1, blurRadius: 5)
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: SvgPicture.asset("assets/img/star.svg"),
                  ),
                  Text(
                    "$rating",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textColor['heading'],
        ),
      ),
      subtitle: Text(description),
      trailing: Text(
        price,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: textColor['heading'],
        ),
      ),
      onTap: action,
    );
  }
}
