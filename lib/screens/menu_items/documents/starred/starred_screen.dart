import 'package:flutter/material.dart';

import '../../../../widgets/custom_search.dart';

class StarredScreen extends StatefulWidget {
  const StarredScreen({Key? key}) : super(key: key);

  @override
  State<StarredScreen> createState() => _StarredScreenState();
}

class _StarredScreenState extends State<StarredScreen> {
  TextEditingController controller = TextEditingController();
  bool isLoading = true;

  @override
  void initState() {
    // show a 3 sec circular progress indicator
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomSearch(
            onChanged: (p0) {},
            controller: controller,
            search: () {},
          ),
          Center(
              child:
                  isLoading ? CircularProgressIndicator() : SizedBox.shrink()),
        ],
      ),
    );
  }
}
