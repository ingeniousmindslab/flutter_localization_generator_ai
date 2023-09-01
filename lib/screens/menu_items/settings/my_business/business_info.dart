import 'dart:io';

import 'package:diy_boox/core/utils/custom_toast.dart';
import 'package:diy_boox/widgets/common_image_view.dart';
import 'package:diy_boox/widgets/common_text_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../../../provider/business_provider.dart';
import '../../../../widgets/custom_small_button.dart';
import '../../../../widgets/custom_small_trans_button.dart';

class BusinessInfo extends StatefulWidget {
  const BusinessInfo({Key? key}) : super(key: key);

  @override
  State<BusinessInfo> createState() => _BusinessInfoState();
}

class _BusinessInfoState extends State<BusinessInfo> {
  final List<String> items = [
    'Axis Bank',
    'Model - I',
    'Model - F',
    'Model - E',
  ];
  String selectedTitle = "Mr";
  String selectedCountries = "";
  String selectedCurrency = "";
  bool selectedType = false;
  XFile? imageFile;

  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    final bProvider = Provider.of<BusinessProvider>(context, listen: false);
    bProvider.getBusinessList();
    super.initState();
  }

  void pickImage() async {
    final bProvider = Provider.of<BusinessProvider>(context, listen: false);

    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    if (image != null) {
      bProvider.uploadFiles(File(image.path));
      setState(() {
        imageFile = image;
      });
    }
  }

  bool valuee = false;
  Widget build(BuildContext context) {
    final bProvider = Provider.of<BusinessProvider>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(child: Consumer<BusinessProvider>(
        builder: (context, value, child) {
          if (value.isLoading) {
            child = Center(
              child: CircularProgressIndicator(
                color: Color(0xff6661B8),
              ),
            );
          } else {
            final company = value.selectedBusiness;
            child = Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      company.isCompany && selectedType
                          ? CustomSmallButton(
                              text: 'Company',
                              onTap: () {},
                            )
                          : CustomSmallTransButton(
                              onTap: () {
                                setState(() {
                                  selectedType = true;
                                });
                              },
                              text: 'Company'),
                      !company.isCompany && !selectedType
                          ? CustomSmallButton(
                              text: 'Individual',
                              onTap: () {},
                            )
                          : CustomSmallTransButton(
                              onTap: () {
                                setState(() {
                                  selectedType = false;
                                });
                              },
                              text: 'Individual'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        company.isCompany ? "Company Name" : "Name",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Sans',
                          color: Color(0xff404A5F),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Container(
                      height: 46,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(blurRadius: 1, spreadRadius: 0.1)
                          ]),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            fontFamily: 'Sans',
                            color: Color(0xff404A5F),
                          ),
                          value: selectedTitle,
                          items: value.selectedTitle
                              .map((item) => DropdownMenuItem<String>(
                                    value: item.name,
                                    child: Text(
                                      item.name,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedTitle = value.toString();
                            });
                          },
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        company.isCompany ? "Company Number" : "Full Name",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Sans',
                          color: Color(0xff404A5F),
                        ),
                      ),
                    ],
                  ),
                ),
                CommonTextField(
                  controller: TextEditingController(text: company.fullName),
                  onChanged: (p0) {
                    company.fullName = p0;
                  },
                ),
                company.isCompany
                    ? Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              "VAT Number",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Sans',
                                color: Color(0xff404A5F),
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
                company.isCompany
                    ? CommonTextField(
                        controller: TextEditingController(),
                        onChanged: (p0) {},
                      )
                    : SizedBox.shrink(),
                const Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Address details",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Sans',
                          color: Color(0xff462A68),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "This will show as receiver details in invoice",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Sans',
                          color: Color(0xff404A5F),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Address line 1",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Sans',
                          color: Color(0xff404A5F),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  controller: TextEditingController(text: company.address1),
                  onChanged: (p0) {
                    company.address1 = p0;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Address line 2",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Sans',
                          color: Color(0xff404A5F),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  controller: TextEditingController(text: company.address2),
                  onChanged: (p0) {
                    company.address2 = p0;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Post Code",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Sans',
                          color: Color(0xff404A5F),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  controller: TextEditingController(text: company.postalCode),
                  onChanged: (p0) {
                    company.postalCode = p0;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "City",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Sans',
                          color: Color(0xff404A5F),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  controller: TextEditingController(text: company.city),
                  onChanged: (p0) {
                    company.city = p0;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "County",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Sans',
                          color: Color(0xff404A5F),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  controller: TextEditingController(text: company.county),
                  onChanged: (p0) {
                    company.county = p0;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Country",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Sans',
                          color: Color(0xff404A5F),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Container(
                      height: 46,
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
                          value: selectedCountries == ""
                              ? value.selectedCountries.description
                              : selectedCountries,
                          items: value.countriesList
                              .map((item) => DropdownMenuItem<String>(
                                    value: item.description,
                                    child: Text(
                                      item.description,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (countrie) {
                            setState(() {
                              selectedCountries = countrie.toString();
                            });
                          },
                        ),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Currency",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Sans',
                          color: Color(0xff404A5F),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Container(
                      height: 46,
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
                          value: selectedCurrency == ""
                              ? value.selectedCurrency.code
                              : selectedCurrency,
                          items: value.currencyList
                              .map((item) => DropdownMenuItem<String>(
                                    value: item.code,
                                    child: Text(
                                      item.code,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (valu) {
                            setState(() {
                              selectedCurrency = valu!;
                            });
                          },
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: DottedBorder(
                    color: Color(0xffA5B1BE),
                    strokeWidth: 2,
                    child: InkWell(
                      onTap: () => pickImage(),
                      child: Container(
                        height: 102,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: imageFile != null
                            ? Image.file(
                                File(imageFile!.path),
                                fit: BoxFit.fill,
                              )
                            : Padding(
                                padding: EdgeInsets.fromLTRB(130, 20, 130, 20),
                                child: CommonImageView(
                                  svgPath: 'assets/choose_file.svg',
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomSmallButton(
                          text: 'Save',
                          onTap: () {
                            bProvider.selectedBusiness;
                            bProvider.updateUserProfileInfo({
                              "id": "124",
                              "isCompany": false,
                              "fullName": company.fullName,
                              "companyNumber": null,
                              "companyVatnumber": null,
                              "address1": company.address1,
                              "address2": company.address2,
                              "postalCode": company.postalCode,
                              "city": company.city,
                              "logo": bProvider.uploadedFile?.fileUrl,
                              "county": null,
                              "countryId": 206,
                              "currencyId": 37,
                              "title": company.title,
                              "businessContacts": company.businessContacts
                            }).whenComplete(() => CustomToast.showToast(
                                  message: "Details Updated",
                                  iconData: Icons.error,
                                  backgroundColor: Colors.blue,
                                  textColor: Colors.white,
                                  gravity: ToastGravity.BOTTOM,
                                ));
                          }),
                      CustomSmallTransButton(onTap: () {}, text: 'Cancel'),
                    ],
                  ),
                ),
              ],
            );
          }
          return child;
        },
      )),
    );
  }
}
