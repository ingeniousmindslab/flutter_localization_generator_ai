class GetScheduleSettingByUniversalIdResponse {
  String universalId;
  String invoiceNo;
  int totalAmount;
  bool isActive;
  String scheduleMessage;
  String createdOn;
  String startDate;
  String endDate;
  String nextRecurrenceDate;
  String lastRecurrenceDate;
  int recurringTypeId;
  int recurringEndTypeId;
  int subRecurringTypeId;
  int maxNumOfOccurrences;
  int separationCount;
  int dayOfWeek;
  int dayOfMonth;
  int weekOfMonth;
  int monthOfYear;
  String timeZone;
  int noOfRecurrence;
  String createdBy;
  String updatedBy;
  String updatedOn;
  bool isDeleted;
  int businessId;

  GetScheduleSettingByUniversalIdResponse({
    required this.universalId,
    required this.invoiceNo,
    required this.totalAmount,
    required this.isActive,
    required this.scheduleMessage,
    required this.createdOn,
    required this.startDate,
    required this.endDate,
    required this.nextRecurrenceDate,
    required this.lastRecurrenceDate,
    required this.recurringTypeId,
    required this.recurringEndTypeId,
    required this.subRecurringTypeId,
    required this.maxNumOfOccurrences,
    required this.separationCount,
    required this.dayOfWeek,
    required this.dayOfMonth,
    required this.weekOfMonth,
    required this.monthOfYear,
    required this.timeZone,
    required this.noOfRecurrence,
    required this.createdBy,
    required this.updatedBy,
    required this.updatedOn,
    required this.isDeleted,
    required this.businessId,
  });

  factory GetScheduleSettingByUniversalIdResponse.fromJson(Map<String, dynamic> json) => GetScheduleSettingByUniversalIdResponse(
    universalId: json["universalId"],
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
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
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
  };
}