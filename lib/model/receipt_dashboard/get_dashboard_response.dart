class GetDashBoardResponse {
  int totalProcessingReceipts;
  int totalReviewReceipts;
  int totalAcceptedReceipts;
  int totalRejectedReceipts;

  GetDashBoardResponse({
    required this.totalProcessingReceipts,
    required this.totalReviewReceipts,
    required this.totalAcceptedReceipts,
    required this.totalRejectedReceipts,
  });

  factory GetDashBoardResponse.fromJson(Map<String, dynamic> json) => GetDashBoardResponse(
    totalProcessingReceipts: json["totalProcessingReceipts"],
    totalReviewReceipts: json["totalReviewReceipts"],
    totalAcceptedReceipts: json["totalAcceptedReceipts"],
    totalRejectedReceipts: json["totalRejectedReceipts"],
  );

  Map<String, dynamic> toJson() => {
    "totalProcessingReceipts": totalProcessingReceipts,
    "totalReviewReceipts": totalReviewReceipts,
    "totalAcceptedReceipts": totalAcceptedReceipts,
    "totalRejectedReceipts": totalRejectedReceipts,
  };
}