import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopfee/views/pages/login_page.dart';
import 'package:shopfee/views/themes/color_scheme.dart';
import 'package:shopfee/views/widgets/bottom_sheet.dart';
import 'package:shopfee/views/widgets/info_card.dart';
import 'package:shopfee/views/widgets/logo.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: textColor['heading'],
        backgroundColor: neutral['light'],
        title: const Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 50),
            child: Logo2(),
          ),
          Text(
            "Members of Shopfee",
            style: TextStyle(
              fontSize: 30,
              color: brand[400],
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
              fontFamily: "Source Sans Pro",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: brand[400],
              ),
            ),
          ),
          InfoCard(text: "John", icon: Icons.face, onPressed: () async {}),
          InfoCard(
              text: "0892732389", icon: Icons.phone, onPressed: () async {}),
          InfoCard(
              text: "Jakarta, Indonesia",
              icon: Icons.location_city,
              onPressed: () async {}),
          InfoCard(
              text: "jhon@gmail.com",
              icon: Icons.email,
              onPressed: () async {}),
          ElevatedButton(
            onPressed: () {Get.off(LoginPage());},
              child: Text('Log Out'),
            ),
        ],
      ),
      bottomSheet: const BottomSheetMenu(),
    );
  }
}
