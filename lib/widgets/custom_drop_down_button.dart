import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  final List<String> items;
  final String selectedValue;
  final Function onChanged;
  final double height;
  final double width;

  CustomDropDownButton({
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 0.1)]),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14,
              fontFamily: 'Sans',
              color: Color(0xff404A5F),
            ),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) => onChanged(value),
          ),
        ));
  }
}
