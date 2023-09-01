class AllClientsResponse {
  int status;
  String dueDate;
  String universalId;
  String name;

  AllClientsResponse({
    required this.status,
    required this.dueDate,
    required this.universalId,
    required this.name,
  });

  factory AllClientsResponse.fromJson(Map<String, dynamic> json) => AllClientsResponse(
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