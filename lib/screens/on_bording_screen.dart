import 'package:diy_boox/screens/onboarding/page1.dart';
import 'package:diy_boox/screens/onboarding/page2.dart';
import 'package:diy_boox/screens/onboarding/page3.dart';
import 'package:diy_boox/screens/onboarding/page4.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                children: [
                  Text(
                    '0% complete',
                    style: TextStyle(
                      color: Color(0xFF111111),
                      fontSize: 14,
                      fontFamily: 'Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: LinearProgressBar(
                maxSteps: 10,
                progressType:
                    LinearProgressBar.progressTypeLinear, // Use Linear progress
                currentStep: 5,
                progressColor: const Color(0xff6661B8),
                backgroundColor: const Color(0xffCCD6DB),
              ),
            ),
            Expanded(
              child: PageView(
                children: [
                  const Page1(),
                  Page2(),
                  Page3(),
                  Page4(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
