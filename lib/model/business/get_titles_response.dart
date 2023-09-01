class GetTitlesResponse {
  String id;
  String name;

  GetTitlesResponse({
    required this.id,
    required this.name,
  });

  factory GetTitlesResponse.fromJson(Map<String, dynamic> json) => GetTitlesResponse(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}