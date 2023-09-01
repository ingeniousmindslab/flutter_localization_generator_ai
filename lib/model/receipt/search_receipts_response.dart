class SearchReceiptsResponse {
  String universalId;
  String receiptNo;
  String receiptDate;
  String supplierId;
  String supplierName;
  String categoryId;
  String categoryName;
  String vatcode;
  int currencyId;
  String code;
  int netAmount;
  int taxAmount;
  int totalAmount;
  bool isPaid;
  bool isProcessing;
  bool isReview;
  bool isAccepted;
  bool isRejected;
  bool isPublished;
  bool isPending;
  String attachments;
  List<FileElement> files;

  SearchReceiptsResponse({
    required this.universalId,
    required this.receiptNo,
    required this.receiptDate,
    required this.supplierId,
    required this.supplierName,
    required this.categoryId,
    required this.categoryName,
    required this.vatcode,
    required this.currencyId,
    required this.code,
    required this.netAmount,
    required this.taxAmount,
    required this.totalAmount,
    required this.isPaid,
    required this.isProcessing,
    required this.isReview,
    required this.isAccepted,
    required this.isRejected,
    required this.isPublished,
    required this.isPending,
    required this.attachments,
    required this.files,
  });

  factory SearchReceiptsResponse.fromJson(Map<String, dynamic> json) => SearchReceiptsResponse(
    universalId: json["universalId"],
    receiptNo: json["receiptNo"],
    receiptDate: json["receiptDate"],
    supplierId: json["supplierId"],
    supplierName: json["supplierName"],
    categoryId: json["categoryId"],
    categoryName: json["categoryName"],
    vatcode: json["vatcode"],
    currencyId: json["currencyId"],
    code: json["code"],
    netAmount: json["netAmount"],
    taxAmount: json["taxAmount"],
    totalAmount: json["totalAmount"],
    isPaid: json["isPaid"],
    isProcessing: json["isProcessing"],
    isReview: json["isReview"],
    isAccepted: json["isAccepted"],
    isRejected: json["isRejected"],
    isPublished: json["isPublished"],
    isPending: json["isPending"],
    attachments: json["attachments"],
    files: List<FileElement>.from(json["files"].map((x) => FileElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "receiptNo": receiptNo,
    "receiptDate": receiptDate,
    "supplierId": supplierId,
    "supplierName": supplierName,
    "categoryId": categoryId,
    "categoryName": categoryName,
    "vatcode": vatcode,
    "currencyId": currencyId,
    "code": code,
    "netAmount": netAmount,
    "taxAmount": taxAmount,
    "totalAmount": totalAmount,
    "isPaid": isPaid,
    "isProcessing": isProcessing,
    "isReview": isReview,
    "isAccepted": isAccepted,
    "isRejected": isRejected,
    "isPublished": isPublished,
    "isPending": isPending,
    "attachments": attachments,
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