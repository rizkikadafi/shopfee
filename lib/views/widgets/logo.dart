import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopfee/views/themes/color_scheme.dart';

class Logo1 extends StatelessWidget {
  const Logo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/img/logo.svg'),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Shop",
                style: TextStyle(
                  color: primaryBrandColor,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "fee",
                style: TextStyle(
                  color: brand[400],
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Text(
          "Let us make your day!",
          style: TextStyle(
            color: textColor['heading'],
          ),
        )
      ],
    );
  }
}
