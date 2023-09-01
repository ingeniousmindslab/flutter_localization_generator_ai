import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingleItemDialog extends StatefulWidget {
  const SingleItemDialog({super.key});

  @override
  State<SingleItemDialog> createState() => _SingleItemDialogState();
}

class _SingleItemDialogState extends State<SingleItemDialog> {
  bool isChecked = false;
  TextEditingController to = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      // insetPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      // clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/preview.svg'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Preview',
                        style: TextStyle(
                          color: Color(0xFF404A5F),
                          fontSize: 12,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/send.svg'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Send',
                        style: TextStyle(
                          color: Color(0xFF404A5F),
                          fontSize: 12,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
                // ListTile(
                //   tileColor: Color(0xffF9F3FF),
                //   leading: SvgPicture.asset('assets/icons/preview.svg'),
                //   title: Text(
                //     'Preview',
                //     style: TextStyle(
                //       color: Color(0xFF404A5F),
                //       fontSize: 16,
                //       fontFamily: 'Sans',
                //       fontWeight: FontWeight.w400,
                //     ),
                //   ),
                // ),
                // ListTile(),
                // ListTile(),
                // ListTile(),
                // ListTile(),
                // ListTile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
