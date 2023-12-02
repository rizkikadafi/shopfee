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

class Logo2 extends StatelessWidget {
  const Logo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: SvgPicture.asset('assets/img/logo.svg'),
        ),
        IntrinsicWidth (
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "Let us make your day!",
                  style: TextStyle(
                    color: textColor['heading'],
                  ),
                ),
              ),
              Divider(
                thickness: 5,
                color: primaryBrandColor,
              )
            ],
          ),
        ),
      ],
    );
  }
}
