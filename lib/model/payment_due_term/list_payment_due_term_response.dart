class ListPaymentDueTermsResponse {
  String universalId;
  String name;
  bool isDefault;
  int dueType;
  int dueInDays;
  int dueByDaysOfMonth;

  ListPaymentDueTermsResponse({
    required this.universalId,
    required this.name,
    required this.isDefault,
    required this.dueType,
    required this.dueInDays,
    required this.dueByDaysOfMonth,
  });

  factory ListPaymentDueTermsResponse.fromJson(Map<String, dynamic> json) => ListPaymentDueTermsResponse(
    universalId: json["universalId"],
    name: json["name"],
    isDefault: json["isDefault"],
    dueType: json["dueType"],
    dueInDays: json["dueInDays"],
    dueByDaysOfMonth: json["dueByDaysOfMonth"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "name": name,
    "isDefault": isDefault,
    "dueType": dueType,
    "dueInDays": dueInDays,
    "dueByDaysOfMonth": dueByDaysOfMonth,
  };
}