import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final String leading;
  final String trailing;
  final VoidCallback onTap;

  const CustomTile({
    super.key,
    required this.leading,
    required this.trailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              leading,
              style: TextStyle(
                fontFamily: 'Sans',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  trailing,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Sans',
                    color: Color(0xff3F4852),
                  ),
                ),
                Icon(
                  Icons.arrow_right_sharp,
                  color: Color(0xff6F6F6F),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
