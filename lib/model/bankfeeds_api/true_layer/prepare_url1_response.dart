class PrepareUrl1Response {
  String returnUrl;

  PrepareUrl1Response({
    required this.returnUrl,
  });

  factory PrepareUrl1Response.fromJson(Map<String, dynamic> json) => PrepareUrl1Response(
    returnUrl: json["returnUrl"],
  );

  Map<String, dynamic> toJson() => {
    "returnUrl": returnUrl,
  };
}
