class ReAuthenticateResponse {
  String returnUrl;

  ReAuthenticateResponse({
    required this.returnUrl,
  });

  factory ReAuthenticateResponse.fromJson(Map<String, dynamic> json) => ReAuthenticateResponse(
    returnUrl: json["returnUrl"],
  );

  Map<String, dynamic> toJson() => {
    "returnUrl": returnUrl,
  };
}