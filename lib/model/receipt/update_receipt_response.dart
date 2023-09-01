class UpdateReceiptResponse {
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
  String createdOn;
  String createdBy;
  String updatedOn;
  String updatedBy;
  String receiptUrl;
  String receiptName;
  int businessId;
  String tenantId;
  int currencyId;
  String receiptCategoryId;
  String receiptSupplierId;
  String receiptTypeId;
  String description;
  List<String> attachments;
  List<FileElement> files;

  UpdateReceiptResponse({
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
    required this.createdOn,
    required this.createdBy,
    required this.updatedOn,
    required this.updatedBy,
    required this.receiptUrl,
    required this.receiptName,
    required this.businessId,
    required this.tenantId,
    required this.currencyId,
    required this.receiptCategoryId,
    required this.receiptSupplierId,
    required this.receiptTypeId,
    required this.description,
    required this.attachments,
    required this.files,
  });

  factory UpdateReceiptResponse.fromJson(Map<String, dynamic> json) => UpdateReceiptResponse(
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
    createdOn: json["createdOn"],
    createdBy: json["createdBy"],
    updatedOn: json["updatedOn"],
    updatedBy: json["updatedBy"],
    receiptUrl: json["receiptUrl"],
    receiptName: json["receiptName"],
    businessId: json["businessId"],
    tenantId: json["tenantId"],
    currencyId: json["currencyId"],
    receiptCategoryId: json["receiptCategoryId"],
    receiptSupplierId: json["receiptSupplierId"],
    receiptTypeId: json["receiptTypeId"],
    description: json["description"],
    attachments: List<String>.from(json["attachments"].map((x) => x)),
    files: List<FileElement>.from(json["files"].map((x) => FileElement.fromJson(x))),
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
    "createdOn": createdOn,
    "createdBy": createdBy,
    "updatedOn": updatedOn,
    "updatedBy": updatedBy,
    "receiptUrl": receiptUrl,
    "receiptName": receiptName,
    "businessId": businessId,
    "tenantId": tenantId,
    "currencyId": currencyId,
    "receiptCategoryId": receiptCategoryId,
    "receiptSupplierId": receiptSupplierId,
    "receiptTypeId": receiptTypeId,
    "description": description,
    "attachments": List<dynamic>.from(attachments.map((x) => x)),
    "files": List<dynamic>.from(files.map((x) => x.toJson())),
  };
}

class FileElement {
  String fileUrl;
  String fileName;

  FileElement({
    required this.fileUrl,
    required this.fileName,
  });

  factory FileElement.fromJson(Map<String, dynamic> json) => FileElement(
    fileUrl: json["fileUrl"],
    fileName: json["fileName"],
  );

  Map<String, dynamic> toJson() => {
    "fileUrl": fileUrl,
    "fileName": fileName,
  };
}