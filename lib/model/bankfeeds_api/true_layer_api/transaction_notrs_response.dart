class TransactionNoteResponse {
  String bankStatementTranId;
  String comment;

  TransactionNoteResponse({
    required this.bankStatementTranId,
    required this.comment,
  });

  factory TransactionNoteResponse.fromJson(Map<String, dynamic> json) => TransactionNoteResponse(
    bankStatementTranId: json["bankStatementTranId"],
    comment: json["comment"],
  );

  Map<String, dynamic> toJson() => {
    "bankStatementTranId": bankStatementTranId,
    "comment": comment,
  };
}