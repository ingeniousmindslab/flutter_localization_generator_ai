import 'package:flutter/material.dart';

import '../../widgets/common_image_view.dart';
import '../../widgets/custom_onboarding_text_field.dart';

class Page3 extends StatelessWidget {
  Page3({Key? key}) : super(key: key);

  TextEditingController otp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: CommonImageView(
            imagePath: 'assets/page3.png',
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
                        'Great Going!',
                        style: TextStyle(
                          color: Color(0xFF111111),
                          fontSize: 24,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      'We’ve sent a text message to +71 77234 22442',
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
                        'Please type in your one-time code below',
                        style: TextStyle(
                          color: Color(0xFF111111),
                          fontSize: 16,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                      child: Text(
                        'It should be in a format like this: 123456',
                        style: TextStyle(
                          color: Color(0xFF5A5A5D),
                          fontSize: 13,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    CustomOnboardingTextField(controller: otp),
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
                    )
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
