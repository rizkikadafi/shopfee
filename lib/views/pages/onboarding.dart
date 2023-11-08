import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopfee/data/models/onboarding_content_model.dart';
import 'package:shopfee/views/widgets/onboard.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final List<OnBoard> onboardContent = listOnboard;
  final controller = PageController(
    initialPage: 1,
  );

  OnBoardingPage _buildPage(
      {required String image,
      required String title,
      required String description}) {
    return OnBoardingPage(image: image, title: title, description: description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
        children: listOnboard.map((onboard) => _buildPage(
          image: onboard.image, 
          title: onboard.title, 
          description: onboard.desctription,
        )).toList(),
    ));
  }
}
