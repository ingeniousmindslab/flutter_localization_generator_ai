class GetCompanyResponse {
  String name;
  String companyNumber;
  String vatNumber;
  String addressLine2;
  String postalCode;
  String addressLine1;
  String premises;
  String locality;
  String country;
  String region;

  GetCompanyResponse({
    required this.name,
    required this.companyNumber,
    required this.vatNumber,
    required this.addressLine2,
    required this.postalCode,
    required this.addressLine1,
    required this.premises,
    required this.locality,
    required this.country,
    required this.region,
  });

  factory GetCompanyResponse.fromJson(Map<String, dynamic> json) => GetCompanyResponse(
    name: json["name"],
    companyNumber: json["companyNumber"],
    vatNumber: json["vatNumber"],
    addressLine2: json["addressLine2"],
    postalCode: json["postalCode"],
    addressLine1: json["addressLine1"],
    premises: json["premises"],
    locality: json["locality"],
    country: json["country"],
    region: json["region"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "companyNumber": companyNumber,
    "vatNumber": vatNumber,
    "addressLine2": addressLine2,
    "postalCode": postalCode,
    "addressLine1": addressLine1,
    "premises": premises,
    "locality": locality,
    "country": country,
    "region": region,
  };
}