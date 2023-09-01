class RefreshResponse {
  bool isccusess;
  String? accessToken;
  String? refreshTokenId;

  RefreshResponse({
    required this.isccusess,
    this.accessToken,
    this.refreshTokenId,
  });

  factory RefreshResponse.fromJson(Map<String, dynamic> json) => RefreshResponse(
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