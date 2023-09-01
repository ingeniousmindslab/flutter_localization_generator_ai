class SupplierListResponse {
  int status;
  String dueDate;
  String universalId;
  String name;

  SupplierListResponse({
    required this.status,
    required this.dueDate,
    required this.universalId,
    required this.name,
  });

  factory SupplierListResponse.fromJson(Map<String, dynamic> json) => SupplierListResponse(
    status: json["status"],
    dueDate: json["dueDate"],
    universalId: json["universalId"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "dueDate": dueDate,
    "universalId": universalId,
    "name": name,
  };
}