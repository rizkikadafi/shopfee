import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shopfee/viewmodels/bottomsheet_menu_controller.dart';
import 'package:shopfee/views/pages/history.dart';
import 'package:shopfee/views/pages/home.dart';
import 'package:shopfee/views/pages/profile_page.dart';
import 'package:shopfee/views/themes/color_scheme.dart';

class BottomSheetMenu extends StatefulWidget {
  const BottomSheetMenu({super.key});

  @override
  State<BottomSheetMenu> createState() => _BottomSheetMenuState();
}

class _BottomSheetMenuState extends State<BottomSheetMenu> {
  final BottomSheetMenuController menuController =
      Get.put(BottomSheetMenuController());
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildMenuItem(
                  'Home',
                  'assets/img/fi_home.svg',
                  menuController.homeActive.value,
                  () {
                    menuController.setActivePage(true, false, false);
                    Get.to(const HomePage(),
                        transition: Transition.noTransition);
                  },
                ),
                buildMenuItem(
                  'History',
                  'assets/img/fi_history.svg',
                  menuController.historyActive.value,
                  () {
                    menuController.setActivePage(false, true, false);
                    Get.to(const HistoryPage(),
                        transition: Transition.noTransition);
                  },
                ),
                buildMenuItem(
                  'Profile',
                  'assets/img/fi_profile.svg',
                  menuController.profileActive.value,
                  () {
                    menuController.setActivePage(false, false, true);
                    Get.to(const ProfilePage(),
                        transition: Transition.noTransition);
                  },
                ),
              ],
            ),
          );
        });
  }

  Widget buildMenuItem(
      String label, String iconPath, bool isActive, VoidCallback action) {
    return GestureDetector(
      onTap: action,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            color: isActive ? primaryBrandColor : textColor['disabled'],
          ),
          Text(
            label,
            style: TextStyle(
                color: isActive ? primaryBrandColor : textColor['disabled']),
          ),
        ],
      ),
    );
  }
}
