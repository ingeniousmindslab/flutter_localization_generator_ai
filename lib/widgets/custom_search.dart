import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  final TextEditingController controller;

  final VoidCallback search;
  final Function(String) onChanged;

  const CustomSearch(
      {super.key,
      required this.controller,
      required this.search,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
      child: Container(
        height: 46,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
              )
            ]),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 5, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: TextField(
                  onChanged: onChanged,
                  controller: controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Color(0xff828282),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Sans',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Color(0xff828282),
                ),
                onPressed: search,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
