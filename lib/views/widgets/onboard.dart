import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopfee/views/themes/color_scheme.dart';

class OnBoardingPage extends StatelessWidget {
  final String image, title, description;
  const OnBoardingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutral['light'],
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: SvgPicture.asset(image),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  title,
                  style: TextStyle(
                    color: textColor['heading'],
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Text(
              description,
              style: TextStyle(
                color: textColor['paragraph'],
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
