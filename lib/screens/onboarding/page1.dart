import 'package:flutter/material.dart';

import '../../widgets/common_image_view.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: CommonImageView(
            imagePath: 'assets/onboarding1.png',
            height: 200,
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonImageView(
                    imagePath: 'assets/popper 1.png',
                    height: 48,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Welcome to DIYBooks Miral',
                    style: TextStyle(
                      color: Color(0xFF111111),
                      fontSize: 24,
                      fontFamily: 'Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'These next 5 minutes will save you 5 hours. By answering a few simple questions, we will magically setup the application for you.',
                    style: TextStyle(
                      color: Color(0xFF6B7280),
                      fontSize: 16,
                      fontFamily: 'Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF6661B8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Center(
                          child: Text(
                            'Let’s get started',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
