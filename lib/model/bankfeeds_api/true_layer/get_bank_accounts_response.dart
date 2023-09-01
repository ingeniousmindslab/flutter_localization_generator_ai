class GetBankAccountResponse {
  String stateId;

  GetBankAccountResponse({
    required this.stateId,
  });

  factory GetBankAccountResponse.fromJson(Map<String, dynamic> json) => GetBankAccountResponse(
    stateId: json["stateId"],
  );

  Map<String, dynamic> toJson() => {
    "stateId": stateId,
  };
}
