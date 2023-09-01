class GetReminderTypesResponse {
  String universalId;
  int typeId;
  String name;
  bool isActive;

  GetReminderTypesResponse({
    required this.universalId,
    required this.typeId,
    required this.name,
    required this.isActive,
  });

  factory GetReminderTypesResponse.fromJson(Map<String, dynamic> json) => GetReminderTypesResponse(
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