class ExecuteClientResponse {
  String? universalId;
  String fullName;
  String? title;
  String? county;
  String? address1;
  String? address2;
  String? postalCode;
  String? city;
  bool? isCompany;
  String? companyNumber;
  String? vaTnumber;
  bool? isArchived;
  String? contactId;
  String? clientId;
  dynamic name;
  String? email;
  String? phone;
  String? contactTitle;
  bool? isPrimary;
  String? paymentDueTermsId;
  int? prefferedCurrencyId;
  int? countryId;
  String? logo;
  int? totalItemCount;
  String? createdOn;
  List<Contacts>? contacts;
  int? dateFilter;

  ExecuteClientResponse(
      {this.universalId,
      required this.fullName,
      this.title,
      this.county,
      this.address1,
      this.address2,
      this.postalCode,
      this.city,
      this.isCompany,
      this.companyNumber,
      this.vaTnumber,
      this.isArchived,
      this.contactId,
      this.clientId,
      required this.name,
      this.email,
      this.phone,
      this.contactTitle,
      this.isPrimary,
      this.paymentDueTermsId,
      this.prefferedCurrencyId,
      this.countryId,
      this.logo,
      this.totalItemCount,
      this.createdOn,
      this.contacts,
      this.dateFilter});

  factory ExecuteClientResponse.fromJson(Map<String, dynamic> json) =>
      ExecuteClientResponse(
          universalId: json['universalId'],
          fullName: json['fullName'],
          title: json['title'],
          county: json['county'],
          address1: json['address1'],
          address2: json['address2'],
          postalCode: json['postalCode'],
          city: json['city'],
          isCompany: json['isCompany'],
          companyNumber: json['companyNumber'],
          vaTnumber: json['vaTnumber'],
          isArchived: json['isArchived'],
          contactId: json['contactId'],
          clientId: json['clientId'],
          name: json['name'],
          email: json['email'],
          phone: json['phone'],
          contactTitle: json['contactTitle'],
          isPrimary: json['isPrimary'],
          paymentDueTermsId: json['paymentDueTermsId'],
          prefferedCurrencyId: json['prefferedCurrencyId'],
          countryId: json['countryId'],
          logo: json['logo'],
          totalItemCount: json['totalItemCount'],
          createdOn: json['createdOn'],
          dateFilter: json['dateFilter']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['universalId'] = this.universalId;
    data['fullName'] = this.fullName;
    data['title'] = this.title;
    data['county'] = this.county;
    data['address1'] = this.address1;
    data['address2'] = this.address2;
    data['postalCode'] = this.postalCode;
    data['city'] = this.city;
    data['isCompany'] = this.isCompany;
    data['companyNumber'] = this.companyNumber;
    data['vaTnumber'] = this.vaTnumber;
    data['isArchived'] = this.isArchived;
    data['contactId'] = this.contactId;
    data['clientId'] = this.clientId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['contactTitle'] = this.contactTitle;
    data['isPrimary'] = this.isPrimary;
    data['paymentDueTermsId'] = this.paymentDueTermsId;
    data['prefferedCurrencyId'] = this.prefferedCurrencyId;
    data['countryId'] = this.countryId;
    data['logo'] = this.logo;
    data['totalItemCount'] = this.totalItemCount;
    data['createdOn'] = this.createdOn;
    if (this.contacts != null) {
      data['contacts'] = this.contacts!.map((v) => v.toJson()).toList();
    }
    data['dateFilter'] = this.dateFilter;
    return data;
  }
}

class Contacts {
  String? contactId;
  String? clientId;
  String? name;
  String? email;
  String? phone;
  String? title;
  bool? isPrimary;

  Contacts(
      {this.contactId,
      this.clientId,
      this.name,
      this.email,
      this.phone,
      this.title,
      this.isPrimary});

  Contacts.fromJson(Map<String, dynamic> json) {
    contactId = json['contactId'];
    clientId = json['clientId'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    title = json['title'];
    isPrimary = json['isPrimary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contactId'] = this.contactId;
    data['clientId'] = this.clientId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['title'] = this.title;
    data['isPrimary'] = this.isPrimary;
    return data;
  }
}
