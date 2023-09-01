class GetTransactionsReceiptsResponse {
  String universalId;
  String bankDetailId;
  String bankTransactionId;
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
  bool isApproved;
  bool isRejected;
  bool isPublished;
  bool isPending;
  bool isLinked;
  String attachments;
  List<FileElement> files;
  List<LinkedUrl> linkedUrls;

  GetTransactionsReceiptsResponse({
    required this.universalId,
    required this.bankDetailId,
    required this.bankTransactionId,
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
    required this.isApproved,
    required this.isRejected,
    required this.isPublished,
    required this.isPending,
    required this.isLinked,
    required this.attachments,
    required this.files,
    required this.linkedUrls,
  });

  factory GetTransactionsReceiptsResponse.fromJson(Map<String, dynamic> json) => GetTransactionsReceiptsResponse(
    universalId: json["universalId"],
    bankDetailId: json["bankDetailId"],
    bankTransactionId: json["bankTransactionId"],
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
    isApproved: json["isApproved"],
    isRejected: json["isRejected"],
    isPublished: json["isPublished"],
    isPending: json["isPending"],
    isLinked: json["isLinked"],
    attachments: json["attachments"],
    files: List<FileElement>.from(json["files"].map((x) => FileElement.fromJson(x))),
    linkedUrls: List<LinkedUrl>.from(json["linkedUrls"].map((x) => LinkedUrl.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "bankDetailId": bankDetailId,
    "bankTransactionId": bankTransactionId,
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
    "isApproved": isApproved,
    "isRejected": isRejected,
    "isPublished": isPublished,
    "isPending": isPending,
    "isLinked": isLinked,
    "attachments": attachments,
    "files": List<dynamic>.from(files.map((x) => x.toJson())),
    "linkedUrls": List<dynamic>.from(linkedUrls.map((x) => x.toJson())),
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

class LinkedUrl {
  String bankTransactionId;
  String bankDetailId;
  String transactionType;
  String url;

  LinkedUrl({
    required this.bankTransactionId,
    required this.bankDetailId,
    required this.transactionType,
    required this.url,
  });

  factory LinkedUrl.fromJson(Map<String, dynamic> json) => LinkedUrl(
    bankTransactionId: json["bankTransactionId"],
    bankDetailId: json["bankDetailId"],
    transactionType: json["transactionType"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "bankTransactionId": bankTransactionId,
    "bankDetailId": bankDetailId,
    "transactionType": transactionType,
    "url": url,
  };
}