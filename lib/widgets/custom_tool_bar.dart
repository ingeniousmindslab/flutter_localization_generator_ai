import 'package:flutter/material.dart';

class CustomToolBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback search;
  final VoidCallback onTap1;
  final VoidCallback onTap2;
  final Function(String) searchText;

  CustomToolBar({
    required this.searchText,
    required this.search,
    required this.controller,
    required this.onTap1,
    required this.onTap2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 46,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                  )
                ]),
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: TextField(
                      controller: controller,
                      onChanged: (value) {
                        searchText(value);
                      },
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
          GestureDetector(
            onTap: onTap1,
            child: Container(
              height: 46,
              width: 46,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                    )
                  ]),
              child: Icon(
                Icons.calendar_month_outlined,
                color: Color(0xff828282),
              ),
            ),
          ),
          GestureDetector(
            onTap: onTap2,
            child: Container(
              height: 46,
              width: 46,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                    )
                  ]),
              child: Icon(
                Icons.more_vert,
                color: Color(0xff828282),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
