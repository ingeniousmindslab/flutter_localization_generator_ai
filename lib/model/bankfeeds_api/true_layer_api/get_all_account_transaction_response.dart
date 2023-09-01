class GetAllAccountTransactionResponse {
  List<TransactionDetail> transactionDetails;
  int totalCount;
  int currentPage;
  String credited;
  String debited;

  GetAllAccountTransactionResponse({
    required this.transactionDetails,
    required this.totalCount,
    required this.currentPage,
    required this.credited,
    required this.debited,
  });

  factory GetAllAccountTransactionResponse.fromJson(Map<String, dynamic> json) => GetAllAccountTransactionResponse(
    transactionDetails: List<TransactionDetail>.from(json["transactionDetails"].map((x) => TransactionDetail.fromJson(x))),
    totalCount: json["totalCount"],
    currentPage: json["currentPage"],
    credited: json["credited"],
    debited: json["debited"],
  );

  Map<String, dynamic> toJson() => {
    "transactionDetails": List<dynamic>.from(transactionDetails.map((x) => x.toJson())),
    "totalCount": totalCount,
    "currentPage": currentPage,
    "credited": credited,
    "debited": debited,
  };
}

class TransactionDetail {
  String universalId;
  String accountId;
  String bankDetailId;
  String transactionId;
  String currency;
  String businessId;
  String transactionType;
  String transactionCategory;
  int amount;
  int currentAmount;
  String transactionDate;
  String description;
  String createdDate;
  String bankId;
  bool isMatched;
  String accountName;
  bool isLinked;
  bool isUrlLinked;
  bool isInvoiceAttachmentLinked;
  List<Receipt> receipts;
  List<InvoicesReceipt> invoicesReceipts;

  TransactionDetail({
    required this.universalId,
    required this.accountId,
    required this.bankDetailId,
    required this.transactionId,
    required this.currency,
    required this.businessId,
    required this.transactionType,
    required this.transactionCategory,
    required this.amount,
    required this.currentAmount,
    required this.transactionDate,
    required this.description,
    required this.createdDate,
    required this.bankId,
    required this.isMatched,
    required this.accountName,
    required this.isLinked,
    required this.isUrlLinked,
    required this.isInvoiceAttachmentLinked,
    required this.receipts,
    required this.invoicesReceipts,
  });

  factory TransactionDetail.fromJson(Map<String, dynamic> json) => TransactionDetail(
    universalId: json["universalId"],
    accountId: json["accountId"],
    bankDetailId: json["bankDetailId"],
    transactionId: json["transactionId"],
    currency: json["currency"],
    businessId: json["businessId"],
    transactionType: json["transactionType"],
    transactionCategory: json["transactionCategory"],
    amount: json["amount"],
    currentAmount: json["currentAmount"],
    transactionDate: json["transactionDate"],
    description: json["description"],
    createdDate: json["createdDate"],
    bankId: json["bankID"],
    isMatched: json["isMatched"],
    accountName: json["accountName"],
    isLinked: json["isLinked"],
    isUrlLinked: json["isUrlLinked"],
    isInvoiceAttachmentLinked: json["isInvoiceAttachmentLinked"],
    receipts: List<Receipt>.from(json["receipts"].map((x) => Receipt.fromJson(x))),
    invoicesReceipts: List<InvoicesReceipt>.from(json["invoicesReceipts"].map((x) => InvoicesReceipt.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "accountId": accountId,
    "bankDetailId": bankDetailId,
    "transactionId": transactionId,
    "currency": currency,
    "businessId": businessId,
    "transactionType": transactionType,
    "transactionCategory": transactionCategory,
    "amount": amount,
    "currentAmount": currentAmount,
    "transactionDate": transactionDate,
    "description": description,
    "createdDate": createdDate,
    "bankID": bankId,
    "isMatched": isMatched,
    "accountName": accountName,
    "isLinked": isLinked,
    "isUrlLinked": isUrlLinked,
    "isInvoiceAttachmentLinked": isInvoiceAttachmentLinked,
    "receipts": List<dynamic>.from(receipts.map((x) => x.toJson())),
    "invoicesReceipts": List<dynamic>.from(invoicesReceipts.map((x) => x.toJson())),
  };
}

class InvoicesReceipt {
  String universalId;
  String bankDetailId;
  String bankTransactionId;
  String invoiceNo;
  String invoiceDate;
  String clientId;
  String clientFullName;
  String status;
  int currencyId;
  int dueDays;
  int paidAmount;
  int dueAmmount;
  int totalAmount;
  bool isDeleted;
  bool isrecurring;

  InvoicesReceipt({
    required this.universalId,
    required this.bankDetailId,
    required this.bankTransactionId,
    required this.invoiceNo,
    required this.invoiceDate,
    required this.clientId,
    required this.clientFullName,
    required this.status,
    required this.currencyId,
    required this.dueDays,
    required this.paidAmount,
    required this.dueAmmount,
    required this.totalAmount,
    required this.isDeleted,
    required this.isrecurring,
  });

  factory InvoicesReceipt.fromJson(Map<String, dynamic> json) => InvoicesReceipt(
    universalId: json["universalId"],
    bankDetailId: json["bankDetailId"],
    bankTransactionId: json["bankTransactionId"],
    invoiceNo: json["invoiceNo"],
    invoiceDate: json["invoiceDate"],
    clientId: json["clientId"],
    clientFullName: json["clientFullName"],
    status: json["status"],
    currencyId: json["currencyId"],
    dueDays: json["dueDays"],
    paidAmount: json["paidAmount"],
    dueAmmount: json["dueAmmount"],
    totalAmount: json["totalAmount"],
    isDeleted: json["isDeleted"],
    isrecurring: json["isrecurring"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "bankDetailId": bankDetailId,
    "bankTransactionId": bankTransactionId,
    "invoiceNo": invoiceNo,
    "invoiceDate": invoiceDate,
    "clientId": clientId,
    "clientFullName": clientFullName,
    "status": status,
    "currencyId": currencyId,
    "dueDays": dueDays,
    "paidAmount": paidAmount,
    "dueAmmount": dueAmmount,
    "totalAmount": totalAmount,
    "isDeleted": isDeleted,
    "isrecurring": isrecurring,
  };
}

class Receipt {
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
  bool isAccepted;
  bool isRejected;
  bool isPublished;
  bool isPending;
  bool isLinked;
  List<LinkedUrl> linkedUrls;

  Receipt({
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
    required this.isAccepted,
    required this.isRejected,
    required this.isPublished,
    required this.isPending,
    required this.isLinked,
    required this.linkedUrls,
  });

  factory Receipt.fromJson(Map<String, dynamic> json) => Receipt(
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
    isAccepted: json["isAccepted"],
    isRejected: json["isRejected"],
    isPublished: json["isPublished"],
    isPending: json["isPending"],
    isLinked: json["isLinked"],
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
    "isAccepted": isAccepted,
    "isRejected": isRejected,
    "isPublished": isPublished,
    "isPending": isPending,
    "isLinked": isLinked,
    "linkedUrls": List<dynamic>.from(linkedUrls.map((x) => x.toJson())),
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