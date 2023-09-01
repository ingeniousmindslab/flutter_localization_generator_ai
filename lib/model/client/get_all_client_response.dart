class GetAllClientResponse {
  String universalId;
  String fullName;
  bool isArchived;
  bool isCompany;
  String companyNumber;
  String? vatnumber;
  String title;
  String paymentDueTermsId;
  int prefferedCurrencyId;
  String county;
  String address1;
  String address2;
  String postalCode;
  String city;
  String? logo;
  int countryId;
  bool isSampleData;
  List<Contact> contacts;

  GetAllClientResponse({
    required this.universalId,
    required this.fullName,
    required this.isArchived,
    required this.isCompany,
    required this.companyNumber,
    this.vatnumber,
    required this.title,
    required this.paymentDueTermsId,
    required this.prefferedCurrencyId,
    required this.county,
    required this.address1,
    required this.address2,
    required this.postalCode,
    required this.city,
    this.logo,
    required this.countryId,
    required this.isSampleData,
    required this.contacts,
  });

  factory GetAllClientResponse.fromJson(Map<String, dynamic> json) =>
      GetAllClientResponse(
        universalId: json["universalId"],
        fullName: json["fullName"],
        isArchived: json["isArchived"],
        isCompany: json["isCompany"],
        companyNumber: json["companyNumber"],
        vatnumber: json["vatnumber"],
        title: json["title"],
        paymentDueTermsId: json["paymentDueTermsId"],
        prefferedCurrencyId: json["prefferedCurrencyId"],
        county: json["county"],
        address1: json["address1"],
        address2: json["address2"],
        postalCode: json["postalCode"],
        city: json["city"],
        logo: json["logo"],
        countryId: json["countryId"],
        isSampleData: json["isSampleData"],
        contacts: List<Contact>.from(
            json["contacts"].map((x) => Contact.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "universalId": universalId,
        "fullName": fullName,
        "isArchived": isArchived,
        "isCompany": isCompany,
        "companyNumber": companyNumber,
        "vatnumber": vatnumber,
        "title": title,
        "paymentDueTermsId": paymentDueTermsId,
        "prefferedCurrencyId": prefferedCurrencyId,
        "county": county,
        "address1": address1,
        "address2": address2,
        "postalCode": postalCode,
        "city": city,
        "logo": logo,
        "countryId": countryId,
        "isSampleData": isSampleData,
        "contacts": List<dynamic>.from(contacts.map((x) => x.toJson())),
      };
}

class Contact {
  String contactId;
  String clientId;
  String name;
  String email;
  String phone;
  String title;
  bool isPrimary;

  Contact({
    required this.contactId,
    required this.clientId,
    required this.name,
    required this.email,
    required this.phone,
    required this.title,
    required this.isPrimary,
  });

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        contactId: json["contactId"],
        clientId: json["clientId"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        title: json["title"],
        isPrimary: json["isPrimary"],
      );

  Map<String, dynamic> toJson() => {
        "contactId": contactId,
        "clientId": clientId,
        "name": name,
        "email": email,
        "phone": phone,
        "title": title,
        "isPrimary": isPrimary,
      };
}
