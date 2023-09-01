class ExecuteRecurringInvoiceListResponse {
  String universalId;
  String invoiceId;
  String clientId;
  String clientName;
  String invoiceNo;
  double totalAmount;
  bool isActive;
  String scheduleMessage;
  String createdOn;
  String startDate;
  String? endDate;
  String nextRecurrenceDate;
  String? lastRecurrenceDate;
  int recurringTypeId;
  int recurringEndTypeId;
  int? subRecurringTypeId;
  String? schdeuleId;
  int? maxNumOfOccurrences;
  int? separationCount;
  int? dayOfWeek;
  int? dayOfMonth;
  int? weekOfMonth;
  int? monthOfYear;
  String? timeZone;
  int noOfRecurrence;
  String createdBy;
  String? updatedBy;
  String? updatedOn;
  bool isDeleted;
  int businessId;
  int totalItemCount;

  ExecuteRecurringInvoiceListResponse({
    required this.universalId,
    required this.invoiceId,
    required this.clientId,
    required this.clientName,
    required this.invoiceNo,
    required this.totalAmount,
    required this.isActive,
    required this.scheduleMessage,
    required this.createdOn,
    required this.startDate,
    this.endDate,
    required this.nextRecurrenceDate,
    this.lastRecurrenceDate,
    required this.recurringTypeId,
    required this.recurringEndTypeId,
    this.subRecurringTypeId,
    this.schdeuleId,
    this.maxNumOfOccurrences,
    this.separationCount,
    this.dayOfWeek,
    this.dayOfMonth,
    this.weekOfMonth,
    this.monthOfYear,
    this.timeZone,
    required this.noOfRecurrence,
    required this.createdBy,
    this.updatedBy,
    this.updatedOn,
    required this.isDeleted,
    required this.businessId,
    required this.totalItemCount,
  });

  factory ExecuteRecurringInvoiceListResponse.fromJson(
          Map<String, dynamic> json) =>
      ExecuteRecurringInvoiceListResponse(
        universalId: json["universalId"],
        invoiceId: json["invoiceId"],
        clientId: json["clientId"],
        clientName: json["clientName"],
        invoiceNo: json["invoiceNo"],
        totalAmount: json["totalAmount"],
        isActive: json["isActive"],
        scheduleMessage: json["scheduleMessage"],
        createdOn: json["createdOn"],
        startDate: json["startDate"],
        endDate: json["endDate"],
        nextRecurrenceDate: json["nextRecurrenceDate"],
        lastRecurrenceDate: json["lastRecurrenceDate"],
        recurringTypeId: json["recurringTypeId"],
        recurringEndTypeId: json["recurringEndTypeId"],
        subRecurringTypeId: json["subRecurringTypeId"],
        schdeuleId: json["schdeuleId"],
        maxNumOfOccurrences: json["maxNumOfOccurrences"],
        separationCount: json["separationCount"],
        dayOfWeek: json["dayOfWeek"],
        dayOfMonth: json["dayOfMonth"],
        weekOfMonth: json["weekOfMonth"],
        monthOfYear: json["monthOfYear"],
        timeZone: json["timeZone"],
        noOfRecurrence: json["noOfRecurrence"],
        createdBy: json["createdBy"],
        updatedBy: json["updatedBy"],
        updatedOn: json["updatedOn"],
        isDeleted: json["isDeleted"],
        businessId: json["businessId"],
        totalItemCount: json["totalItemCount"],
      );

  Map<String, dynamic> toJson() => {
        "universalId": universalId,
        "invoiceId": invoiceId,
        "clientId": clientId,
        "clientName": clientName,
        "invoiceNo": invoiceNo,
        "totalAmount": totalAmount,
        "isActive": isActive,
        "scheduleMessage": scheduleMessage,
        "createdOn": createdOn,
        "startDate": startDate,
        "endDate": endDate,
        "nextRecurrenceDate": nextRecurrenceDate,
        "lastRecurrenceDate": lastRecurrenceDate,
        "recurringTypeId": recurringTypeId,
        "recurringEndTypeId": recurringEndTypeId,
        "subRecurringTypeId": subRecurringTypeId,
        "schdeuleId": schdeuleId,
        "maxNumOfOccurrences": maxNumOfOccurrences,
        "separationCount": separationCount,
        "dayOfWeek": dayOfWeek,
        "dayOfMonth": dayOfMonth,
        "weekOfMonth": weekOfMonth,
        "monthOfYear": monthOfYear,
        "timeZone": timeZone,
        "noOfRecurrence": noOfRecurrence,
        "createdBy": createdBy,
        "updatedBy": updatedBy,
        "updatedOn": updatedOn,
        "isDeleted": isDeleted,
        "businessId": businessId,
        "totalItemCount": totalItemCount,
      };
}
