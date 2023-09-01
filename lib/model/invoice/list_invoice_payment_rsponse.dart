class ListInvoicePaymentResponse {
  String universalId;
  String invoiceId;
  int amount;
  int method;
  String paymentMethodName;
  String paymentDate;
  bool isSendReceiptToClient;
  int amountDue;
  int totalItemCount;
  String paymentHistoryId;

  ListInvoicePaymentResponse({
    required this.universalId,
    required this.invoiceId,
    required this.amount,
    required this.method,
    required this.paymentMethodName,
    required this.paymentDate,
    required this.isSendReceiptToClient,
    required this.amountDue,
    required this.totalItemCount,
    required this.paymentHistoryId,
  });

  factory ListInvoicePaymentResponse.fromJson(Map<String, dynamic> json) => ListInvoicePaymentResponse(
    universalId: json["universalId"],
    invoiceId: json["invoiceId"],
    amount: json["amount"],
    method: json["method"],
    paymentMethodName: json["paymentMethodName"],
    paymentDate: json["paymentDate"],
    isSendReceiptToClient: json["isSendReceiptToClient"],
    amountDue: json["amountDue"],
    totalItemCount: json["totalItemCount"],
    paymentHistoryId: json["paymentHistoryId"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "invoiceId": invoiceId,
    "amount": amount,
    "method": method,
    "paymentMethodName": paymentMethodName,
    "paymentDate": paymentDate,
    "isSendReceiptToClient": isSendReceiptToClient,
    "amountDue": amountDue,
    "totalItemCount": totalItemCount,
    "paymentHistoryId": paymentHistoryId,
  };
}