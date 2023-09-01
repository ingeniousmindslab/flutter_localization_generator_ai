class VerifyResponse {
  bool isccusess;
  String? accessToken;
  String? refreshTokenId;

  VerifyResponse({
    required this.isccusess,
    this.accessToken,
    this.refreshTokenId,
  });

  factory VerifyResponse.fromJson(Map<String, dynamic> json) => VerifyResponse(
    isccusess: json["isccusess"],
    accessToken: json["accessToken"],
    refreshTokenId: json["refreshTokenId"],
  );

  Map<String, dynamic> toJson() => {
    "isccusess": isccusess,
    "accessToken": accessToken,
    "refreshTokenId": refreshTokenId,
  };
}