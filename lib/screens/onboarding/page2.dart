import 'package:diy_boox/widgets/custom_onboarding_text_field.dart';
import 'package:flutter/material.dart';

import '../../widgets/common_image_view.dart';

class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);

  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: CommonImageView(
            imagePath: 'assets/page2.png',
            height: 200,
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Text(
                        'Let’s help us to understand about you',
                        style: TextStyle(
                          color: Color(0xFF111111),
                          fontSize: 24,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Text(
                      'Tell us about your basic information name, contact etc...',
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 16,
                        fontFamily: 'Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        'First Name',
                        style: TextStyle(
                          color: Color(0xFF5A5A5D),
                          fontSize: 16,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    CustomOnboardingTextField(controller: name),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        'Last Name',
                        style: TextStyle(
                          color: Color(0xFF5A5A5D),
                          fontSize: 16,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    CustomOnboardingTextField(controller: name),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Color(0xFF5A5A5D),
                          fontSize: 16,
                          fontFamily: 'Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    CustomOnboardingTextField(controller: name),
                    const Padding(
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
