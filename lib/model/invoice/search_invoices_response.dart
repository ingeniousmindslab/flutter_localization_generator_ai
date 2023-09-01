class SearchInvoicesResponse {
  String universalId;
  String invoiceNo;
  String clientId;
  String clientFullName;
  String externalEstimateId;
  String invoiceDate;
  String dueDate;
  int dueDays;
  int totalAmount;
  int paidAmount;
  int dueAmmount;
  int status;
  String lastRecievedDate;
  String sentOn;
  bool isDeleted;
  bool isRecurring;
  String schedule;
  String firstInvoice;
  String createdOn;
  int totalItemCount;

  SearchInvoicesResponse({
    required this.universalId,
    required this.invoiceNo,
    required this.clientId,
    required this.clientFullName,
    required this.externalEstimateId,
    required this.invoiceDate,
    required this.dueDate,
    required this.dueDays,
    required this.totalAmount,
    required this.paidAmount,
    required this.dueAmmount,
    required this.status,
    required this.lastRecievedDate,
    required this.sentOn,
    required this.isDeleted,
    required this.isRecurring,
    required this.schedule,
    required this.firstInvoice,
    required this.createdOn,
    required this.totalItemCount,
  });

  factory SearchInvoicesResponse.fromJson(Map<String, dynamic> json) => SearchInvoicesResponse(
    universalId: json["universalId"],
    invoiceNo: json["invoiceNo"],
    clientId: json["clientId"],
    clientFullName: json["clientFullName"],
    externalEstimateId: json["externalEstimateId"],
    invoiceDate: json["invoiceDate"],
    dueDate: json["dueDate"],
    dueDays: json["dueDays"],
    totalAmount: json["totalAmount"],
    paidAmount: json["paidAmount"],
    dueAmmount: json["dueAmmount"],
    status: json["status"],
    lastRecievedDate: json["lastRecievedDate"],
    sentOn: json["sentOn"],
    isDeleted: json["isDeleted"],
    isRecurring: json["isRecurring"],
    schedule: json["schedule"],
    firstInvoice: json["firstInvoice"],
    createdOn: json["createdOn"],
    totalItemCount: json["totalItemCount"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "invoiceNo": invoiceNo,
    "clientId": clientId,
    "clientFullName": clientFullName,
    "externalEstimateId": externalEstimateId,
    "invoiceDate": invoiceDate,
    "dueDate": dueDate,
    "dueDays": dueDays,
    "totalAmount": totalAmount,
    "paidAmount": paidAmount,
    "dueAmmount": dueAmmount,
    "status": status,
    "lastRecievedDate": lastRecievedDate,
    "sentOn": sentOn,
    "isDeleted": isDeleted,
    "isRecurring": isRecurring,
    "schedule": schedule,
    "firstInvoice": firstInvoice,
    "createdOn": createdOn,
    "totalItemCount": totalItemCount,
  };
}