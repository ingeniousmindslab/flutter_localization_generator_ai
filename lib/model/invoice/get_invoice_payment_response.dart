class GetInvoicePaymentResponse {
  String universalId;
  String invoiceId;
  String paymentHistoryId;
  String note;
  bool isDeleted;
  String createdOn;
  bool isSendReciptToClient;
  int amountDue;
  int amount;
  PaymentHistory paymentHistory;

  GetInvoicePaymentResponse({
    required this.universalId,
    required this.invoiceId,
    required this.paymentHistoryId,
    required this.note,
    required this.isDeleted,
    required this.createdOn,
    required this.isSendReciptToClient,
    required this.amountDue,
    required this.amount,
    required this.paymentHistory,
  });

  factory GetInvoicePaymentResponse.fromJson(Map<String, dynamic> json) => GetInvoicePaymentResponse(
    universalId: json["universalId"],
    invoiceId: json["invoiceId"],
    paymentHistoryId: json["paymentHistoryId"],
    note: json["note"],
    isDeleted: json["isDeleted"],
    createdOn: json["createdOn"],
    isSendReciptToClient: json["isSendReciptToClient"],
    amountDue: json["amountDue"],
    amount: json["amount"],
    paymentHistory: PaymentHistory.fromJson(json["paymentHistory"]),
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "invoiceId": invoiceId,
    "paymentHistoryId": paymentHistoryId,
    "note": note,
    "isDeleted": isDeleted,
    "createdOn": createdOn,
    "isSendReciptToClient": isSendReciptToClient,
    "amountDue": amountDue,
    "amount": amount,
    "paymentHistory": paymentHistory.toJson(),
  };
}

class PaymentHistory {
  String universalId;
  String paymentId;
  int amount;
  int paymentAmount;
  int paymentGatewayId;
  String paymentMethod;
  String cardType;
  String cardNumber;
  int cardExpireMonth;
  int cardExpireYear;
  String receiptUrl;
  String currency;
  int status;
  String billingCity;
  String billingCounty;
  String billingPostalCode;
  String billingState;
  String billingEmail;
  String billingName;
  String paymentDate;
  String paymentJson;
  String createdOn;

  PaymentHistory({
    required this.universalId,
    required this.paymentId,
    required this.amount,
    required this.paymentAmount,
    required this.paymentGatewayId,
    required this.paymentMethod,
    required this.cardType,
    required this.cardNumber,
    required this.cardExpireMonth,
    required this.cardExpireYear,
    required this.receiptUrl,
    required this.currency,
    required this.status,
    required this.billingCity,
    required this.billingCounty,
    required this.billingPostalCode,
    required this.billingState,
    required this.billingEmail,
    required this.billingName,
    required this.paymentDate,
    required this.paymentJson,
    required this.createdOn,
  });

  factory PaymentHistory.fromJson(Map<String, dynamic> json) => PaymentHistory(
    universalId: json["universalId"],
    paymentId: json["paymentId"],
    amount: json["amount"],
    paymentAmount: json["paymentAmount"],
    paymentGatewayId: json["paymentGatewayId"],
    paymentMethod: json["paymentMethod"],
    cardType: json["cardType"],
    cardNumber: json["cardNumber"],
    cardExpireMonth: json["cardExpireMonth"],
    cardExpireYear: json["cardExpireYear"],
    receiptUrl: json["receiptUrl"],
    currency: json["currency"],
    status: json["status"],
    billingCity: json["billingCity"],
    billingCounty: json["billingCounty"],
    billingPostalCode: json["billingPostalCode"],
    billingState: json["billingState"],
    billingEmail: json["billingEmail"],
    billingName: json["billingName"],
    paymentDate: json["paymentDate"],
    paymentJson: json["paymentJson"],
    createdOn: json["createdOn"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "paymentId": paymentId,
    "amount": amount,
    "paymentAmount": paymentAmount,
    "paymentGatewayId": paymentGatewayId,
    "paymentMethod": paymentMethod,
    "cardType": cardType,
    "cardNumber": cardNumber,
    "cardExpireMonth": cardExpireMonth,
    "cardExpireYear": cardExpireYear,
    "receiptUrl": receiptUrl,
    "currency": currency,
    "status": status,
    "billingCity": billingCity,
    "billingCounty": billingCounty,
    "billingPostalCode": billingPostalCode,
    "billingState": billingState,
    "billingEmail": billingEmail,
    "billingName": billingName,
    "paymentDate": paymentDate,
    "paymentJson": paymentJson,
    "createdOn": createdOn,
  };
}