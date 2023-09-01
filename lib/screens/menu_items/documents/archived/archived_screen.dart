import 'package:diy_boox/core/utils/app_extenshions.dart';
import 'package:diy_boox/core/utils/color_constant.dart';
import 'package:diy_boox/provider/drive_file_provider.dart';
import 'package:diy_boox/repo/drive_file_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../widgets/custom_search.dart';

class ArchivedScreen extends StatefulWidget {
  const ArchivedScreen({Key? key}) : super(key: key);

  @override
  State<ArchivedScreen> createState() => _ArchivedScreenState();
}

class _ArchivedScreenState extends State<ArchivedScreen> {
  TextEditingController controller = TextEditingController();
  bool isLoading = true;

  @override
  void initState() {
    // show a 3 sec circular progress indicator
    Provider.of<DriveFileProvider>(context, listen: false).getArchive();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomSearch(
                  controller: controller,
                  onChanged: (p0) {
                    Provider.of<DriveFileProvider>(context, listen: false)
                        .getArchive(search: p0);
                  },
                  search: () {},
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                  iconSize: 32,
                  color: Color(0xff828282)),
            ],
          ),
          Consumer<DriveFileProvider>(
            builder: (context, value, child) {
              if (value.isLoading) {
                child = Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff828282),
                  ),
                );
              } else if (value.getArchiveData.isEmpty) {
                child = Center(
                  child: Text(
                    'No Archived Files',
                    style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 20,
                    ),
                  ),
                );
              } else {
                child = Expanded(
                  child: ListView.builder(
                    itemCount: value.getArchiveData.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: ColorConstant.primaryColor,
                          child: Icon(
                            value.getArchiveData[index].mimeType == 'folder'
                                ? Icons.folder
                                : Icons.picture_as_pdf,
                            // color: Colors.white,
                          ),
                        ),
                        title: Text(
                          value.getArchiveData[index].name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          '${value.getArchiveData[index].createdOn.toDateTimeFormat()} • ${value.getArchiveData[index].sizeWithSuffix}',
                          style: TextStyle(
                            color: Color(0xff828282),
                            fontSize: 16,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: Color(0xff828282),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
              return child;
            },
          )
        ],
      ),
    );
  }
}
