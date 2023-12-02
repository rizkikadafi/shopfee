import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:shopfee/data/models/onboarding_content_model.dart';
import 'package:shopfee/views/pages/home.dart';
import 'package:shopfee/views/themes/color_scheme.dart';
import 'package:shopfee/views/widgets/onboard.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final List<OnBoard> onboardContent = listOnboard;
  late int selectedPage = 0;
  late final _pageController = PageController(initialPage: selectedPage);

  OnBoardingPage _buildPage(
      {required String image,
      required String title,
      required String description}) {
    return OnBoardingPage(image: image, title: title, description: description);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const pageCount = 3;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: neutral['light'],
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                Get.off(const HomePage());
              },
              child: Center(
                child: Text("Skip",
                    style: TextStyle(
                      color: primaryBrandColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    )),
              ),
            ),
          )
        ],
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (page) {
          setState(() {
            selectedPage = page;
          });
        },
        children: listOnboard
            .map((onboard) => _buildPage(
                  image: onboard.image,
                  title: onboard.title,
                  description: onboard.desctription,
                ))
            .toList(),
      ),
      bottomSheet: Container(
        padding:
            const EdgeInsets.only(top: 20, bottom: 70, right: 30, left: 30),
        decoration: BoxDecoration(color: neutral['light']),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 100,
              child: PageViewDotIndicator(
                currentItem: selectedPage,
                count: pageCount,
                padding: EdgeInsets.zero,
                unselectedColor: textColor['disabled']!,
                selectedColor: primaryBrandColor!,
                alignment: Alignment.centerLeft,
                duration: const Duration(milliseconds: 200),
                size: const Size(30, 12),
                fadeEdges: false,
                borderRadius: BorderRadius.circular(6),
                boxShape: BoxShape.rectangle,
                onItemClicked: (index) {
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedPage == 2) {
                  Get.off(const HomePage(),
                      transition: Transition.zoom,
                      curve: Curves.ease,
                      duration: const Duration(milliseconds: 1000));
                }
                _pageController.animateToPage(
                  ++selectedPage,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(primaryBrandColor),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ))),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("NEXT"),
                  ),
                  SvgPicture.asset("assets/img/arrow-right.svg")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
