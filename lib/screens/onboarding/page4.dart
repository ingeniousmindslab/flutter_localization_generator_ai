import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../widgets/common_image_view.dart';
import '../../widgets/custom_onboarding_text_field.dart';

class Page4 extends StatefulWidget {
  Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final List<String> items = [
    'This Quarter',
    'Model - I',
    'Model - F',
    'Model - E',
  ];

  String? selectedValue = "This Quarter";

  int _groupValue1 = 1;

  TextEditingController registrationNo = TextEditingController();
  TextEditingController companyName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: CommonImageView(
            imagePath: 'assets/page4.png',
            height: 200,
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Text(
                        'Hello, Elina Ray!',
                        style: TextStyle(
                          color: Color(0xFF111111),
                          fontSize: 24,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      'Help us to know little about your business',
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 16,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        'What’s your primary industry?',
                        style: TextStyle(
                          color: Color(0xFF5A5A5D),
                          fontSize: 16,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Container(
                          height: 48,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(blurRadius: 1, spreadRadius: 0.1)
                              ]),
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
                              onChanged: (value) {},
                            ),
                          )),
                    ),
                    Text(
                      'Please choose your company type and enter the name of business.',
                      style: TextStyle(
                        color: Color(0xFF111111),
                        fontSize: 16,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        'If your business is a limited company a search of companies house will take place to get info.',
                        style: TextStyle(
                          color: Color(0xFF6B7280),
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: RadioListTile<int>(
                              title: Text(
                                'Limited Company',
                                style: TextStyle(
                                  color: Color(0xFF404A5F),
                                  fontSize: 12,
                                  fontFamily: 'Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              value: 1,
                              groupValue: _groupValue1,
                              onChanged: (value) {
                                setState(() {
                                  _groupValue1 = value!;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RadioListTile<int>(
                              title: Text(
                                'Sole Trader',
                                style: TextStyle(
                                  color: Color(0xFF404A5F),
                                  fontSize: 12,
                                  fontFamily: 'Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              value: 2,
                              groupValue: _groupValue1,
                              onChanged: (value) {
                                setState(() {
                                  _groupValue1 = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            'Registration No',
                            style: TextStyle(
                              color: Color(0xFF5A5A5D),
                              fontSize: 16,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        CustomOnboardingTextField(controller: registrationNo),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            'Company Name',
                            style: TextStyle(
                              color: Color(0xFF5A5A5D),
                              fontSize: 16,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        CustomOnboardingTextField(controller: registrationNo),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Color(0xFF6661B8),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Back',
                                style: TextStyle(
                                  color: Color(0xFF6661B8),
                                  fontSize: 16,
                                  fontFamily: 'Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Next',
                                style: TextStyle(
                                  color: Color(0xFF6661B8),
                                  fontSize: 16,
                                  fontFamily: 'Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xFF6661B8),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
