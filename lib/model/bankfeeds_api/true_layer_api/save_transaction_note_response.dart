class SaveTransactionNoteResponse {
  String bankStatementTranId;
  String comment;

  SaveTransactionNoteResponse({
    required this.bankStatementTranId,
    required this.comment,
  });

  factory SaveTransactionNoteResponse.fromJson(Map<String, dynamic> json) => SaveTransactionNoteResponse(
    bankStatementTranId: json["bankStatementTranId"],
    comment: json["comment"],
  );

  Map<String, dynamic> toJson() => {
    "bankStatementTranId": bankStatementTranId,
    "comment": comment,
  };
}