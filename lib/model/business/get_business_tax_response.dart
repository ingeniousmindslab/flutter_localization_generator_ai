class GetBusinessTaxResponse {
  String universalId;
  double rate;
  bool isDefault;
  String name;

  GetBusinessTaxResponse({
    required this.universalId,
    required this.rate,
    required this.isDefault,
    required this.name,
  });

  @override
  int get hashCode =>
      universalId.hashCode ^ rate.hashCode ^ isDefault.hashCode ^ name.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GetBusinessTaxResponse &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          rate == other.rate &&
          isDefault == other.isDefault &&
          universalId == other.universalId;

  factory GetBusinessTaxResponse.fromJson(Map<String, dynamic> json) =>
      GetBusinessTaxResponse(
        universalId: json["universalId"],
        rate: json["rate"],
        isDefault: json["isDefault"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "universalId": universalId,
        "rate": rate,
        "isDefault": isDefault,
        "name": name,
      };
}
