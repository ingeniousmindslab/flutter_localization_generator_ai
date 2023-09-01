class ListPaymentMethodResponse {
  int id;
  String name;
  bool isDefault;
  bool isArchived;
  String createdOn;
  String updatedOn;

  ListPaymentMethodResponse({
    required this.id,
    required this.name,
    required this.isDefault,
    required this.isArchived,
    required this.createdOn,
    required this.updatedOn,
  });

  factory ListPaymentMethodResponse.fromJson(Map<String, dynamic> json) => ListPaymentMethodResponse(
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