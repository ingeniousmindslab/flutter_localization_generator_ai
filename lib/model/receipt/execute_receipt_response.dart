class ExecuteReceiptResponse {
  int totalItemCount;
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
  double netAmount;
  double taxAmount;
  double totalAmount;
  bool isPaid;
  bool isProcessing;
  bool isReview;
  bool isApproved;
  bool isRejected;
  bool isPublished;
  bool isPending;
  bool isLinked;
  bool isMatched;
  bool isDuplicate;
  bool isArchived;
  int dateFilter;
  List<dynamic> receiptTransactions;

  ExecuteReceiptResponse({
    required this.totalItemCount,
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
    required this.isApproved,
    required this.isRejected,
    required this.isPublished,
    required this.isPending,
    required this.isLinked,
    required this.isMatched,
    required this.isDuplicate,
    required this.isArchived,
    required this.dateFilter,
    required this.receiptTransactions,
  });

  factory ExecuteReceiptResponse.fromJson(Map<String, dynamic> json) {
    return ExecuteReceiptResponse(
      totalItemCount: json['totalItemCount'],
      universalId: json['universalId'],
      receiptNo: json['receiptNo'],
      receiptDate: json['receiptDate'],
      supplierId: json['supplierId'],
      supplierName: json['supplierName'],
      categoryId: json['categoryId'],
      categoryName: json['categoryName'],
      vatcode: json['vatcode'],
      currencyId: json['currencyId'],
      code: json['code'],
      netAmount: json['netAmount'],
      taxAmount: json['taxAmount'],
      totalAmount: json['totalAmount'],
      isPaid: json['isPaid'],
      isProcessing: json['isProcessing'],
      isReview: json['isReview'],
      isApproved: json['isApproved'],
      isRejected: json['isRejected'],
      isPublished: json['isPublished'],
      isPending: json['isPending'],
      isLinked: json['isLinked'],
      isMatched: json['isMatched'],
      isDuplicate: json['isDuplicate'],
      isArchived: json['isArchived'],
      dateFilter: json['dateFilter'],
      receiptTransactions: json['receiptTransactions'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalItemCount'] = this.totalItemCount;
    data['universalId'] = this.universalId;
    data['receiptNo'] = this.receiptNo;
    data['receiptDate'] = this.receiptDate;
    data['supplierId'] = this.supplierId;
    data['supplierName'] = this.supplierName;
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['vatcode'] = this.vatcode;
    data['currencyId'] = this.currencyId;
    data['code'] = this.code;
    data['netAmount'] = this.netAmount;
    data['taxAmount'] = this.taxAmount;
    data['totalAmount'] = this.totalAmount;
    data['isPaid'] = this.isPaid;
    data['isProcessing'] = this.isProcessing;
    data['isReview'] = this.isReview;
    data['isApproved'] = this.isApproved;
    data['isRejected'] = this.isRejected;
    data['isPublished'] = this.isPublished;
    data['isPending'] = this.isPending;
    data['isLinked'] = this.isLinked;
    data['isMatched'] = this.isMatched;
    data['isDuplicate'] = this.isDuplicate;
    data['isArchived'] = this.isArchived;
    data['dateFilter'] = this.dateFilter;
    data['receiptTransactions'] = this.receiptTransactions;
    return data;
  }
}
