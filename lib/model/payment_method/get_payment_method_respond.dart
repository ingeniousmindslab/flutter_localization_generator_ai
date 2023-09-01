class GetPaymentMethodResponse {
  int id;
  String name;
  bool isDefault;
  bool isArchived;
  String createdOn;
  String updatedOn;

  GetPaymentMethodResponse({
    required this.id,
    required this.name,
    required this.isDefault,
    required this.isArchived,
    required this.createdOn,
    required this.updatedOn,
  });

  factory GetPaymentMethodResponse.fromJson(Map<String, dynamic> json) => GetPaymentMethodResponse(
    id: json["id"],
    name: json["name"],
    isDefault: json["isDefault"],
    isArchived: json["isArchived"],
    createdOn: json["createdOn"],
    updatedOn: json["updatedOn"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "isDefault": isDefault,
    "isArchived": isArchived,
    "createdOn": createdOn,
    "updatedOn": updatedOn,
  };
}