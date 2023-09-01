class GetInvoiceReminderResponse {
  String universalId;
  int typeId;
  String name;
  bool isActive;

  GetInvoiceReminderResponse({
    required this.universalId,
    required this.typeId,
    required this.name,
    required this.isActive,
  });

  factory GetInvoiceReminderResponse.fromJson(Map<String, dynamic> json) => GetInvoiceReminderResponse(
    universalId: json["universalId"],
    typeId: json["typeId"],
    name: json["name"],
    isActive: json["isActive"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "typeId": typeId,
    "name": name,
    "isActive": isActive,
  };
}