class GetCurrencyListResponse {
  int id;
  String country;
  String name;
  String code;
  String symbol;

  GetCurrencyListResponse({
    required this.id,
    required this.country,
    required this.name,
    required this.code,
    required this.symbol,
  });

  @override
  int get hashCode => name.hashCode ^ symbol.hashCode ^ code.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GetCurrencyListResponse &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          symbol == other.symbol &&
          code == other.code;

  factory GetCurrencyListResponse.fromJson(Map<String, dynamic> json) =>
      GetCurrencyListResponse(
        id: json["id"],
        country: json["country"],
        name: json["name"],
        code: json["code"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "country": country,
        "name": name,
        "code": code,
        "symbol": symbol,
      };
}
