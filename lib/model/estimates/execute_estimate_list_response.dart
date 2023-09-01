class ExecuteEstimateListResponse {
  String universalId;
  String estimateId;
  String createdOn;
  String statusUpdatedOn;
  String? lastSentOn;
  String? updatedOn;
  String? acceptedDate;
  String expiresDate;
  int status;
  String? logo;
  String? ref;
  String clientId;
  String fullName;
  double totalAmount;
  bool isDeleted;
  String? poid;
  String? emailSentOn;
  String? discountName;
  int? discountAmount;
  bool isDiscountInPercentage;
  String? costName;
  int? costAmount;
  bool isCostInPercentage;
  String footer;
  int totalItemCount;
  bool isSampleData;
  String taxId;
  int taxRate;
  int taxAmount;
  String? taxName;
  List<EstimateDetail>? estimateDetails;
  List<EstimateNote>? estimateNotes;
  Client? client;

  ExecuteEstimateListResponse({
    required this.universalId,
    required this.estimateId,
    required this.createdOn,
    required this.statusUpdatedOn,
    this.lastSentOn,
    this.updatedOn,
    this.acceptedDate,
    required this.expiresDate,
    required this.status,
    this.logo,
    this.ref,
    required this.clientId,
    required this.fullName,
    required this.totalAmount,
    required this.isDeleted,
    this.poid,
    this.emailSentOn,
    this.discountName,
    this.discountAmount,
    required this.isDiscountInPercentage,
    this.costName,
    this.costAmount,
    required this.isCostInPercentage,
    required this.footer,
    required this.totalItemCount,
    required this.isSampleData,
    required this.taxId,
    required this.taxRate,
    required this.taxAmount,
    this.taxName,
    this.estimateDetails,
    this.estimateNotes,
    this.client,
  });

  factory ExecuteEstimateListResponse.fromJson(Map<String, dynamic> json) =>
      ExecuteEstimateListResponse(
        universalId: json["universalId"],
        estimateId: json["estimateId"],
        createdOn: json["createdOn"],
        statusUpdatedOn: json["statusUpdatedOn"],
        lastSentOn: json["lastSentOn"],
        updatedOn: json["updatedOn"],
        acceptedDate: json["acceptedDate"],
        expiresDate: json["expiresDate"],
        status: json["status"],
        logo: json["logo"],
        ref: json["ref"],
        clientId: json["clientId"],
        fullName: json["fullName"],
        totalAmount: json["totalAmount"],
        isDeleted: json["isDeleted"],
        poid: json["poid"],
        emailSentOn: json["emailSentOn"],
        discountName: json["discountName"],
        discountAmount: json["discountAmount"],
        isDiscountInPercentage: json["isDiscountInPercentage"],
        costName: json["costName"],
        costAmount: json["costAmount"],
        isCostInPercentage: json["isCostInPercentage"],
        footer: json["footer"],
        totalItemCount: json["totalItemCount"],
        isSampleData: json["isSampleData"],
        taxId: json["taxId"],
        taxRate: json["taxRate"],
        taxAmount: json["taxAmount"],
        taxName: json["taxName"],
        estimateDetails: json["estimateDetails"] != null
            ? List<EstimateDetail>.from(
                json["estimateDetails"].map((x) => EstimateDetail.fromJson(x)))
            : null,
        estimateNotes: json["estimateNotes"] != null
            ? List<EstimateNote>.from(
                json["estimateNotes"].map((x) => EstimateNote.fromJson(x)))
            : null,
        client: json["client"] != null ? Client.fromJson(json["client"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "universalId": universalId,
        "estimateId": estimateId,
        "createdOn": createdOn,
        "statusUpdatedOn": statusUpdatedOn,
        "lastSentOn": lastSentOn,
        "updatedOn": updatedOn,
        "acceptedDate": acceptedDate,
        "expiresDate": expiresDate,
        "status": status,
        "logo": logo,
        "ref": ref,
        "clientId": clientId,
        "fullName": fullName,
        "totalAmount": totalAmount,
        "isDeleted": isDeleted,
        "poid": poid,
        "emailSentOn": emailSentOn,
        "discountName": discountName,
        "discountAmount": discountAmount,
        "isDiscountInPercentage": isDiscountInPercentage,
        "costName": costName,
        "costAmount": costAmount,
        "isCostInPercentage": isCostInPercentage,
        "footer": footer,
        "totalItemCount": totalItemCount,
        "isSampleData": isSampleData,
        "taxId": taxId,
        "taxRate": taxRate,
        "taxAmount": taxAmount,
        "taxName": taxName,
        "estimateDetails": estimateDetails != null
            ? List<dynamic>.from(estimateDetails!.map((x) => x.toJson()))
            : null,
        "estimateNotes": estimateNotes != null
            ? List<dynamic>.from(estimateNotes!.map((x) => x.toJson()))
            : null,
        "client": client != null ? client!.toJson() : null,
      };
}

class Client {
  String universalId;
  String fullName;
  bool isArchived;
  bool isCompany;
  String companyNumber;
  String vatnumber;
  String title;
  String paymentDueTermsId;
  int prefferedCurrencyId;
  String county;
  String address1;
  String address2;
  String postalCode;
  String city;
  String logo;
  int countryId;
  bool isSampleData;
  List<Contact> contacts;

  Client({
    required this.universalId,
    required this.fullName,
    required this.isArchived,
    required this.isCompany,
    required this.companyNumber,
    required this.vatnumber,
    required this.title,
    required this.paymentDueTermsId,
    required this.prefferedCurrencyId,
    required this.county,
    required this.address1,
    required this.address2,
    required this.postalCode,
    required this.city,
    required this.logo,
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

class EstimateDetail {
  String universalId;
  String estimateId;
  String clientId;
  String itemName;
  String description;
  int quantity;
  double price;
  int amount;
  bool isDeleted;
  bool isArchived;
  String itemId;
  int type;

  EstimateDetail({
    required this.universalId,
    required this.estimateId,
    required this.clientId,
    required this.itemName,
    required this.description,
    required this.quantity,
    required this.price,
    required this.amount,
    required this.isDeleted,
    required this.isArchived,
    required this.itemId,
    required this.type,
  });

  factory EstimateDetail.fromJson(Map<String, dynamic> json) => EstimateDetail(
        universalId: json["universalId"],
        estimateId: json["estimateId"],
        clientId: json["clientId"],
        itemName: json["itemName"],
        description: json["description"],
        quantity: json["quantity"],
        price: json["price"]?.toDouble(),
        amount: json["amount"],
        isDeleted: json["isDeleted"],
        isArchived: json["isArchived"],
        itemId: json["itemId"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "universalId": universalId,
        "estimateId": estimateId,
        "clientId": clientId,
        "itemName": itemName,
        "description": description,
        "quantity": quantity,
        "price": price,
        "amount": amount,
        "isDeleted": isDeleted,
        "isArchived": isArchived,
        "itemId": itemId,
        "type": type,
      };
}

class EstimateNote {
  String universalId;
  String note;
  String name;
  String createdOn;
  String createdDate;
  String createdTime;
  bool hasAttachments;
  List<Attachment> attachments;

  EstimateNote({
    required this.universalId,
    required this.note,
    required this.name,
    required this.createdOn,
    required this.createdDate,
    required this.createdTime,
    required this.hasAttachments,
    required this.attachments,
  });

  factory EstimateNote.fromJson(Map<String, dynamic> json) => EstimateNote(
        universalId: json["universalId"],
        note: json["note"],
        name: json["name"],
        createdOn: json["createdOn"],
        createdDate: json["createdDate"],
        createdTime: json["createdTime"],
        hasAttachments: json["hasAttachments"],
        attachments: List<Attachment>.from(
            json["attachments"].map((x) => Attachment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "universalId": universalId,
        "note": note,
        "name": name,
        "createdOn": createdOn,
        "createdDate": createdDate,
        "createdTime": createdTime,
        "hasAttachments": hasAttachments,
        "attachments": List<dynamic>.from(attachments.map((x) => x.toJson())),
      };
}

class Attachment {
  String attachment;
  String fileSize;

  Attachment({
    required this.attachment,
    required this.fileSize,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
        attachment: json["attachment"],
        fileSize: json["fileSize"],
      );

  Map<String, dynamic> toJson() => {
        "attachment": attachment,
        "fileSize": fileSize,
      };
}
