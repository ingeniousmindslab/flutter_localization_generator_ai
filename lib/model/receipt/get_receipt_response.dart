class GetReceiptResponse {
  String universalId;
  String receiptNo;
  String receiptDate;
  String vatCode;
  int netAmount;
  int taxAmount;
  int totalAmount;
  bool isPaid;
  bool isPublished;
  bool isProcessing;
  bool isReview;
  bool isApproved;
  bool isRejected;
  bool isDeleted;
  bool isPending;
  bool isDuplicate;
  bool isArchived;
  String createdOn;
  String createdBy;
  String updatedOn;
  String updatedBy;
  List<String> attachments;
  int businessId;
  String tenantId;
  int currencyId;
  String receiptCategoryId;
  String receiptSupplierId;
  String receiptTypeId;
  String description;
  bool isSampleData;
  Currency currency;
  Receipt receiptCategory;
  Receipt receiptSupplier;
  Receipt receiptType;
  String fileName;
  Content content;

  GetReceiptResponse({
    required this.universalId,
    required this.receiptNo,
    required this.receiptDate,
    required this.vatCode,
    required this.netAmount,
    required this.taxAmount,
    required this.totalAmount,
    required this.isPaid,
    required this.isPublished,
    required this.isProcessing,
    required this.isReview,
    required this.isApproved,
    required this.isRejected,
    required this.isDeleted,
    required this.isPending,
    required this.isDuplicate,
    required this.isArchived,
    required this.createdOn,
    required this.createdBy,
    required this.updatedOn,
    required this.updatedBy,
    required this.attachments,
    required this.businessId,
    required this.tenantId,
    required this.currencyId,
    required this.receiptCategoryId,
    required this.receiptSupplierId,
    required this.receiptTypeId,
    required this.description,
    required this.isSampleData,
    required this.currency,
    required this.receiptCategory,
    required this.receiptSupplier,
    required this.receiptType,
    required this.fileName,
    required this.content,
  });

  factory GetReceiptResponse.fromJson(Map<String, dynamic> json) => GetReceiptResponse(
    universalId: json["universalId"],
    receiptNo: json["receiptNo"],
    receiptDate: json["receiptDate"],
    vatCode: json["vatCode"],
    netAmount: json["netAmount"],
    taxAmount: json["taxAmount"],
    totalAmount: json["totalAmount"],
    isPaid: json["isPaid"],
    isPublished: json["isPublished"],
    isProcessing: json["isProcessing"],
    isReview: json["isReview"],
    isApproved: json["isApproved"],
    isRejected: json["isRejected"],
    isDeleted: json["isDeleted"],
    isPending: json["isPending"],
    isDuplicate: json["isDuplicate"],
    isArchived: json["isArchived"],
    createdOn: json["createdOn"],
    createdBy: json["createdBy"],
    updatedOn: json["updatedOn"],
    updatedBy: json["updatedBy"],
    attachments: List<String>.from(json["attachments"].map((x) => x)),
    businessId: json["businessId"],
    tenantId: json["tenantId"],
    currencyId: json["currencyId"],
    receiptCategoryId: json["receiptCategoryId"],
    receiptSupplierId: json["receiptSupplierId"],
    receiptTypeId: json["receiptTypeId"],
    description: json["description"],
    isSampleData: json["isSampleData"],
    currency: Currency.fromJson(json["currency"]),
    receiptCategory: Receipt.fromJson(json["receiptCategory"]),
    receiptSupplier: Receipt.fromJson(json["receiptSupplier"]),
    receiptType: Receipt.fromJson(json["receiptType"]),
    fileName: json["fileName"],
    content: Content.fromJson(json["content"]),
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "receiptNo": receiptNo,
    "receiptDate": receiptDate,
    "vatCode": vatCode,
    "netAmount": netAmount,
    "taxAmount": taxAmount,
    "totalAmount": totalAmount,
    "isPaid": isPaid,
    "isPublished": isPublished,
    "isProcessing": isProcessing,
    "isReview": isReview,
    "isApproved": isApproved,
    "isRejected": isRejected,
    "isDeleted": isDeleted,
    "isPending": isPending,
    "isDuplicate": isDuplicate,
    "isArchived": isArchived,
    "createdOn": createdOn,
    "createdBy": createdBy,
    "updatedOn": updatedOn,
    "updatedBy": updatedBy,
    "attachments": List<dynamic>.from(attachments.map((x) => x)),
    "businessId": businessId,
    "tenantId": tenantId,
    "currencyId": currencyId,
    "receiptCategoryId": receiptCategoryId,
    "receiptSupplierId": receiptSupplierId,
    "receiptTypeId": receiptTypeId,
    "description": description,
    "isSampleData": isSampleData,
    "currency": currency.toJson(),
    "receiptCategory": receiptCategory.toJson(),
    "receiptSupplier": receiptSupplier.toJson(),
    "receiptType": receiptType.toJson(),
    "fileName": fileName,
    "content": content.toJson(),
  };
}

class Content {
  bool canRead;
  bool canWrite;
  bool canSeek;
  bool canTimeout;
  int length;
  int position;
  int readTimeout;
  int writeTimeout;

  Content({
    required this.canRead,
    required this.canWrite,
    required this.canSeek,
    required this.canTimeout,
    required this.length,
    required this.position,
    required this.readTimeout,
    required this.writeTimeout,
  });

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    canRead: json["canRead"],
    canWrite: json["canWrite"],
    canSeek: json["canSeek"],
    canTimeout: json["canTimeout"],
    length: json["length"],
    position: json["position"],
    readTimeout: json["readTimeout"],
    writeTimeout: json["writeTimeout"],
  );

  Map<String, dynamic> toJson() => {
    "canRead": canRead,
    "canWrite": canWrite,
    "canSeek": canSeek,
    "canTimeout": canTimeout,
    "length": length,
    "position": position,
    "readTimeout": readTimeout,
    "writeTimeout": writeTimeout,
  };
}

class Currency {
  int id;
  String country;
  String name;
  String code;
  String symbol;

  Currency({
    required this.id,
    required this.country,
    required this.name,
    required this.code,
    required this.symbol,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
    id: json["id"],
    country: json["country"],
    name: json["name"],
    code: json["code"],
    symbol: json["symbol"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "country": country,
    "name": name,
    "code": code,
    "symbol": symbol,
  };
}

class Receipt {
  String universalId;
  int businessId;
  String? categoryName;
  bool isDeleted;
  bool isSampleData;
  String? supplierName;
  String? typeName;

  Receipt({
    required this.universalId,
    required this.businessId,
    this.categoryName,
    required this.isDeleted,
    required this.isSampleData,
    this.supplierName,
    this.typeName,
  });

  factory Receipt.fromJson(Map<String, dynamic> json) => Receipt(
    universalId: json["universalId"],
    businessId: json["businessId"],
    categoryName: json["categoryName"],
    isDeleted: json["isDeleted"],
    isSampleData: json["isSampleData"],
    supplierName: json["supplierName"],
    typeName: json["typeName"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "businessId": businessId,
    "categoryName": categoryName,
    "isDeleted": isDeleted,
    "isSampleData": isSampleData,
    "supplierName": supplierName,
    "typeName": typeName,
  };
}