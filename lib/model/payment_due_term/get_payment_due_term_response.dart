class GetPaymentDueTermsResponse {
  String universalId;
  String name;
  bool isDefault;
  int dueType;
  int? dueInDays;
  int? dueByDaysOfMonth;

  GetPaymentDueTermsResponse({
    required this.universalId,
    required this.name,
    required this.isDefault,
    required this.dueType,
    this.dueInDays,
    this.dueByDaysOfMonth,
  });

  factory GetPaymentDueTermsResponse.fromJson(Map<String, dynamic> json) =>
      GetPaymentDueTermsResponse(
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
