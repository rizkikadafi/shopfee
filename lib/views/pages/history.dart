import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopfee/viewmodels/bottomsheet_menu_controller.dart';
import 'package:shopfee/views/themes/color_scheme.dart';
import 'package:shopfee/views/widgets/bottom_sheet.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: textColor['heading'],
        backgroundColor: neutral['light'],
        title: const Text(
          'History Order'
        ),
      ),
      bottomSheet: const BottomSheetMenu(),
      body: Image.asset('assets/img/order.png'),
    );
  }
}
