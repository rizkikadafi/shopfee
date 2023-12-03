import 'package:flutter/material.dart';
import 'package:shopfee/views/widgets/custom_outline_button.dart';

class CustomMenu extends StatefulWidget {
  final String customizeData;
  final List<String> optionMenu;

  const CustomMenu(
      {super.key, required this.customizeData, required this.optionMenu});

  @override
  State<CustomMenu> createState() => _CustomMenuState();
}

class _CustomMenuState extends State<CustomMenu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.customizeData),
        Row(
          children: [CustomOutlinedButton(text: "Small")],
        )
      ],
    );
  }

  List<CustomOutlinedButton>? optionBuilder() {
    List<CustomOutlinedButton>? listOption;
    for (String option in widget.optionMenu) {
      listOption!.add(CustomOutlinedButton(text: option));
    }
    return listOption;
  }
}
