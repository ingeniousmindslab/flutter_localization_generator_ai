class RegisterResponse {
  bool isSuccess;
  int statusCode;
  dynamic data;
  String statusMessage;
  List<dynamic> errors;
  int count;
  dynamic entityUId;
  dynamic entitySubUId;
  dynamic tokenCode;

  RegisterResponse({
    required this.isSuccess,
    required this.statusCode,
    this.data,
    required this.statusMessage,
    required this.errors,
    required this.count,
    this.entityUId,
    this.entitySubUId,
    this.tokenCode,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      RegisterResponse(
        isSuccess: json["isSuccess"],
        statusCode: json["statusCode"],
        data: json["data"],
        statusMessage: json["statusMessage"],
        errors: List<dynamic>.from(json["errors"].map((x) => x)),
        count: json["count"],
        entityUId: json["entityUId"],
        entitySubUId: json["entitySubUId"],
        tokenCode: json["tokenCode"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "statusCode": statusCode,
        "data": data,
        "statusMessage": statusMessage,
        "errors": List<dynamic>.from(errors.map((x) => x)),
        "count": count,
        "entityUId": entityUId,
        "entitySubUId": entitySubUId,
        "tokenCode": tokenCode,
      };
}
