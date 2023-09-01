import 'package:flutter/material.dart';

class CommonDatePicker extends StatelessWidget {
  const CommonDatePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        height: 46,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 0.1)]),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '22-Dec-2023',
                style: TextStyle(
                  fontFamily: 'Sans',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xff828282),
                ),
              ),
              Icon(
                Icons.calendar_month_outlined,
                color: Color(0xff828282),
              )
            ],
          ),
        ),
      ),
    );
  }
}
