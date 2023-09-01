class GetInvoiceResponse {
  String universalId;
  String clientId;
  String invoiceNo;
  String invoiceDate;
  String dueDate;
  double totalAmount;
  double paidAmount;
  String? reference;
  String? externalEstimateId;
  int invoiceType;
  bool isDeleted;
  int status;
  String? footer;
  String? discountName;
  double discountAmount;
  bool isDiscountInPercentage;
  String? costName;
  double? costAmount;
  bool isCostInPercentage;
  String paymentDueTermsId;
  String taxId;
  double taxRate;
  double taxAmount;
  String? taxName;
  String? paymentDetailId;
  bool isSampleData;
  bool isStripePayment;
  List<InvoiceDetail> invoiceDetails;
  Client client;

  GetInvoiceResponse({
    required this.universalId,
    required this.clientId,
    required this.invoiceNo,
    required this.invoiceDate,
    required this.dueDate,
    required this.totalAmount,
    required this.paidAmount,
    this.reference,
    this.externalEstimateId,
    required this.invoiceType,
    required this.isDeleted,
    required this.status,
    this.footer,
    this.discountName,
    required this.discountAmount,
    required this.isDiscountInPercentage,
    this.costName,
    this.costAmount,
    required this.isCostInPercentage,
    required this.paymentDueTermsId,
    required this.taxId,
    required this.taxRate,
    required this.taxAmount,
    this.taxName,
    this.paymentDetailId,
    required this.isSampleData,
    required this.isStripePayment,
    required this.invoiceDetails,
    required this.client,
  });

  factory GetInvoiceResponse.fromJson(Map<String, dynamic> json) =>
      GetInvoiceResponse(
        universalId: json["universalId"],
        clientId: json["clientId"],
        invoiceNo: json["invoiceNo"],
        invoiceDate: json["invoiceDate"],
        dueDate: json["dueDate"],
        totalAmount: json["totalAmount"],
        paidAmount: json["paidAmount"],
        reference: json["reference"],
        externalEstimateId: json["externalEstimateId"],
        invoiceType: json["invoiceType"],
        isDeleted: json["isDeleted"],
        status: json["status"],
        footer: json["footer"],
        discountName: json["discountName"],
        discountAmount: json["discountAmount"],
        isDiscountInPercentage: json["isDiscountInPercentage"],
        costName: json["costName"],
        costAmount: json["costAmount"],
        isCostInPercentage: json["isCostInPercentage"],
        paymentDueTermsId: json["paymentDueTermsId"],
        taxId: json["taxId"],
        taxRate: json["taxRate"],
        taxAmount: json["taxAmount"],
        taxName: json["taxName"],
        paymentDetailId: json["paymentDetailId"],
        isSampleData: json["isSampleData"],
        isStripePayment: json["isStripePayment"],
        invoiceDetails: List<InvoiceDetail>.from(
            json["invoiceDetails"].map((x) => InvoiceDetail.fromJson(x))),
        client: Client.fromJson(json["client"]),
      );

  Map<String, dynamic> toJson() => {
        "universalId": universalId,
        "clientId": clientId,
        "invoiceNo": invoiceNo,
        "invoiceDate": invoiceDate,
        "dueDate": dueDate,
        "totalAmount": totalAmount,
        "paidAmount": paidAmount,
        "reference": reference,
        "externalEstimateId": externalEstimateId,
        "invoiceType": invoiceType,
        "isDeleted": isDeleted,
        "status": status,
        "footer": footer,
        "discountName": discountName,
        "discountAmount": discountAmount,
        "isDiscountInPercentage": isDiscountInPercentage,
        "costName": costName,
        "costAmount": costAmount,
        "isCostInPercentage": isCostInPercentage,
        "paymentDueTermsId": paymentDueTermsId,
        "taxId": taxId,
        "taxRate": taxRate,
        "taxAmount": taxAmount,
        "taxName": taxName,
        "paymentDetailId": paymentDetailId,
        "isSampleData": isSampleData,
        "isStripePayment": isStripePayment,
        "invoiceDetails":
            List<dynamic>.from(invoiceDetails.map((x) => x.toJson())),
        "client": client.toJson(),
      };
}

class Client {
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

  Client({
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

  factory Client.fromJson(Map<String, dynamic> json) => Client(
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

class InvoiceDetail {
  String universalId;
  String invoiceId;
  int type;
  String? itemId;
  String itemName;
  String description;
  int quantity;
  double price;
  double amount;

  InvoiceDetail({
    required this.universalId,
    required this.invoiceId,
    required this.type,
    this.itemId,
    required this.itemName,
    required this.description,
    required this.quantity,
    required this.price,
    required this.amount,
  });

  factory InvoiceDetail.fromJson(Map<String, dynamic> json) => InvoiceDetail(
        universalId: json["universalId"],
        invoiceId: json["invoiceId"],
        type: json["type"],
        itemId: json["itemId"],
        itemName: json["itemName"],
        description: json["description"],
        quantity: json["quantity"],
        price: json["price"]?.toDouble(),
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "universalId": universalId,
        "invoiceId": invoiceId,
        "type": type,
        "itemId": itemId,
        "itemName": itemName,
        "description": description,
        "quantity": quantity,
        "price": price,
        "amount": amount,
      };
}
