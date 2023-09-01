class ShareFolderResponse {
  String filterPath;
  String mimeType;
  String universalId;
  String toMailId;
  String message;
  String subject;

  ShareFolderResponse({
    required this.filterPath,
    required this.mimeType,
    required this.universalId,
    required this.toMailId,
    required this.message,
    required this.subject,
  });

  factory ShareFolderResponse.fromJson(Map<String, dynamic> json) => ShareFolderResponse(
    filterPath: json["filterPath"],
    mimeType: json["mimeType"],
    universalId: json["universalId"],
    toMailId: json["toMailId"],
    message: json["message"],
    subject: json["subject"],
  );

  Map<String, dynamic> toJson() => {
    "filterPath": filterPath,
    "mimeType": mimeType,
    "universalId": universalId,
    "toMailId": toMailId,
    "message": message,
    "subject": subject,
  };
}