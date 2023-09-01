import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChanged;
  final EdgeInsetsGeometry? padding;
  final TextInputType? kType;

  const CommonTextField(
      {super.key,
      required this.controller,
      required this.onChanged,
      this.padding = const EdgeInsets.fromLTRB(20, 0, 20, 0),
      this.kType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding!,
      child: Container(
        height: 46,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 0.1)]),
        child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextField(
              controller: controller,
              keyboardType: kType ?? TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              onChanged: onChanged,
            )),
      ),
    );
  }
}
