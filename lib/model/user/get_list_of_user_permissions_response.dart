class GetListOfUserPermissionsResponse {
  int id;
  String name;

  GetListOfUserPermissionsResponse({
    required this.id,
    required this.name,
  });

  factory GetListOfUserPermissionsResponse.fromJson(Map<String, dynamic> json) => GetListOfUserPermissionsResponse(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
