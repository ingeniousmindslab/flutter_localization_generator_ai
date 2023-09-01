

class GetEstimatesTemplateResponse {
  String providerAccountId;
  String fromEmail;
  String subject;
  String message;
  bool sendCopyToSelf;
  bool isSendFromCapium;
  List<String> toEmail;
  String entityId;
  String paymentLink;
  int templateId;
  List<Attachment> attachments;
  String invoiceId;
  String entityName;
  int amount;

  GetEstimatesTemplateResponse({
    required this.providerAccountId,
    required this.fromEmail,
    required this.subject,
    required this.message,
    required this.sendCopyToSelf,
    required this.isSendFromCapium,
    required this.toEmail,
    required this.entityId,
    required this.paymentLink,
    required this.templateId,
    required this.attachments,
    required this.invoiceId,
    required this.entityName,
    required this.amount,
  });

  factory GetEstimatesTemplateResponse.fromJson(Map<String, dynamic> json) => GetEstimatesTemplateResponse(
    providerAccountId: json["providerAccountId"],
    fromEmail: json["fromEmail"],
    subject: json["subject"],
    message: json["message"],
    sendCopyToSelf: json["sendCopyToSelf"],
    isSendFromCapium: json["isSendFromCapium"],
    toEmail: List<String>.from(json["toEmail"].map((x) => x)),
    entityId: json["entityId"],
    paymentLink: json["paymentLink"],
    templateId: json["templateId"],
    attachments: List<Attachment>.from(json["attachments"].map((x) => Attachment.fromJson(x))),
    invoiceId: json["invoiceId"],
    entityName: json["entityName"],
    amount: json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "providerAccountId": providerAccountId,
    "fromEmail": fromEmail,
    "subject": subject,
    "message": message,
    "sendCopyToSelf": sendCopyToSelf,
    "isSendFromCapium": isSendFromCapium,
    "toEmail": List<dynamic>.from(toEmail.map((x) => x)),
    "entityId": entityId,
    "paymentLink": paymentLink,
    "templateId": templateId,
    "attachments": List<dynamic>.from(attachments.map((x) => x.toJson())),
    "invoiceId": invoiceId,
    "entityName": entityName,
    "amount": amount,
  };
}

class Attachment {
  String fileName;
  String fileBase64String;
  String mimeType;
  bool isUploadedFromBrowser;

  Attachment({
    required this.fileName,
    required this.fileBase64String,
    required this.mimeType,
    required this.isUploadedFromBrowser,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
    fileName: json["fileName"],
    fileBase64String: json["fileBase64String"],
    mimeType: json["mimeType"],
    isUploadedFromBrowser: json["isUploadedFromBrowser"],
  );

  Map<String, dynamic> toJson() => {
    "fileName": fileName,
    "fileBase64String": fileBase64String,
    "mimeType": mimeType,
    "isUploadedFromBrowser": isUploadedFromBrowser,
  };
}