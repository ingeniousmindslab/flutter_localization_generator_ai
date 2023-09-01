class GetInvoiceRecentHistoryResponse {
  String universalId;
  String createdOn;
  String lastScheduleDate;
  String lastRemiderSentDate;
  String lastPaymentReceivedDate;
  int totalAmount;
  int amountDue;
  int receivedAmount;

  GetInvoiceRecentHistoryResponse({
    required this.universalId,
    required this.createdOn,
    required this.lastScheduleDate,
    required this.lastRemiderSentDate,
    required this.lastPaymentReceivedDate,
    required this.totalAmount,
    required this.amountDue,
    required this.receivedAmount,
  });

  factory GetInvoiceRecentHistoryResponse.fromJson(Map<String, dynamic> json) => GetInvoiceRecentHistoryResponse(
    universalId: json["universalId"],
    createdOn: json["createdOn"],
    lastScheduleDate: json["lastScheduleDate"],
    lastRemiderSentDate: json["lastRemiderSentDate"],
    lastPaymentReceivedDate: json["lastPaymentReceivedDate"],
    totalAmount: json["totalAmount"],
    amountDue: json["amountDue"],
    receivedAmount: json["receivedAmount"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "createdOn": createdOn,
    "lastScheduleDate": lastScheduleDate,
    "lastRemiderSentDate": lastRemiderSentDate,
    "lastPaymentReceivedDate": lastPaymentReceivedDate,
    "totalAmount": totalAmount,
    "amountDue": amountDue,
    "receivedAmount": receivedAmount,
  };
}