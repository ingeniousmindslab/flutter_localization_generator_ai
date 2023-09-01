class GetRecurringInvoiceByUniversalIdResponse {
  String universalId;
  String clientId;
  String invoiceNo;
  bool isActive;
  int businessId;
  String invoiceDate;
  String dueDate;
  int totalAmount;
  String externalEstimateId;
  String footer;
  String discountName;
  int discountAmount;
  bool isDiscountInPercentage;
  String costName;
  int costAmount;
  bool isCostInPercentage;
  String paymentDueTermsId;
  bool isSampleData;
  String createdBy;
  String updatedBy;
  String updatedOn;
  bool isDeleted;
  String paymentDetailId;
  List<RecurringInvoiceDetail> recurringInvoiceDetails;

  GetRecurringInvoiceByUniversalIdResponse({
    required this.universalId,
    required this.clientId,
    required this.invoiceNo,
    required this.isActive,
    required this.businessId,
    required this.invoiceDate,
    required this.dueDate,
    required this.totalAmount,
    required this.externalEstimateId,
    required this.footer,
    required this.discountName,
    required this.discountAmount,
    required this.isDiscountInPercentage,
    required this.costName,
    required this.costAmount,
    required this.isCostInPercentage,
    required this.paymentDueTermsId,
    required this.isSampleData,
    required this.createdBy,
    required this.updatedBy,
    required this.updatedOn,
    required this.isDeleted,
    required this.paymentDetailId,
    required this.recurringInvoiceDetails,
  });

  factory GetRecurringInvoiceByUniversalIdResponse.fromJson(Map<String, dynamic> json) => GetRecurringInvoiceByUniversalIdResponse(
    universalId: json["universalId"],
    clientId: json["clientId"],
    invoiceNo: json["invoiceNo"],
    isActive: json["isActive"],
    businessId: json["businessId"],
    invoiceDate: json["invoiceDate"],
    dueDate: json["dueDate"],
    totalAmount: json["totalAmount"],
    externalEstimateId: json["externalEstimateId"],
    footer: json["footer"],
    discountName: json["discountName"],
    discountAmount: json["discountAmount"],
    isDiscountInPercentage: json["isDiscountInPercentage"],
    costName: json["costName"],
    costAmount: json["costAmount"],
    isCostInPercentage: json["isCostInPercentage"],
    paymentDueTermsId: json["paymentDueTermsId"],
    isSampleData: json["isSampleData"],
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    updatedOn: json["updatedOn"],
    isDeleted: json["isDeleted"],
    paymentDetailId: json["paymentDetailId"],
    recurringInvoiceDetails: List<RecurringInvoiceDetail>.from(json["recurringInvoiceDetails"].map((x) => RecurringInvoiceDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "clientId": clientId,
    "invoiceNo": invoiceNo,
    "isActive": isActive,
    "businessId": businessId,
    "invoiceDate": invoiceDate,
    "dueDate": dueDate,
    "totalAmount": totalAmount,
    "externalEstimateId": externalEstimateId,
    "footer": footer,
    "discountName": discountName,
    "discountAmount": discountAmount,
    "isDiscountInPercentage": isDiscountInPercentage,
    "costName": costName,
    "costAmount": costAmount,
    "isCostInPercentage": isCostInPercentage,
    "paymentDueTermsId": paymentDueTermsId,
    "isSampleData": isSampleData,
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "updatedOn": updatedOn,
    "isDeleted": isDeleted,
    "paymentDetailId": paymentDetailId,
    "recurringInvoiceDetails": List<dynamic>.from(recurringInvoiceDetails.map((x) => x.toJson())),
  };
}

class RecurringInvoiceDetail {
  String universalId;
  String recurringInvoiceId;
  int type;
  String itemId;
  String itemName;
  String description;
  int quantity;
  double price;
  int amount;

  RecurringInvoiceDetail({
    required this.universalId,
    required this.recurringInvoiceId,
    required this.type,
    required this.itemId,
    required this.itemName,
    required this.description,
    required this.quantity,
    required this.price,
    required this.amount,
  });

  factory RecurringInvoiceDetail.fromJson(Map<String, dynamic> json) => RecurringInvoiceDetail(
    universalId: json["universalId"],
    recurringInvoiceId: json["recurringInvoiceId"],
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
    "recurringInvoiceId": recurringInvoiceId,
    "type": type,
    "itemId": itemId,
    "itemName": itemName,
    "description": description,
    "quantity": quantity,
    "price": price,
    "amount": amount,
  };
}