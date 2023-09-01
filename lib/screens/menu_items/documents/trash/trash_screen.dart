import 'package:flutter/material.dart';

import '../../../../widgets/custom_search.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({Key? key}) : super(key: key);

  @override
  State<TrashScreen> createState() => _TrashScreenState();
}

class _TrashScreenState extends State<TrashScreen> {
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

  TextEditingController controller = TextEditingController();
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
          Column(
            children: [
              Center(
                  child: isLoading
                      ? CircularProgressIndicator()
                      : SizedBox.shrink()),
            ],
          )
        ],
      ),
    );
  }
}
