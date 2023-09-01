class GetCountrieListResponse {
  int id;
  String description;
  String? code;

  GetCountrieListResponse({
    required this.id,
    required this.description,
    this.code,
  });

  factory GetCountrieListResponse.fromJson(Map<String, dynamic> json) =>
      GetCountrieListResponse(
        id: json["id"],
        description: json["description"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description,
        "code": code,
      };
}
