class GetNoteUserResponse {
  String universalId;
  String note;
  String name;
  String createdOn;
  String createdDate;
  String createdTime;
  bool hasAttachments;
  List<Attachment> attachments;

  GetNoteUserResponse({
    required this.universalId,
    required this.note,
    required this.name,
    required this.createdOn,
    required this.createdDate,
    required this.createdTime,
    required this.hasAttachments,
    required this.attachments,
  });

  factory GetNoteUserResponse.fromJson(Map<String, dynamic> json) => GetNoteUserResponse(
    universalId: json["universalId"],
    note: json["note"],
    name: json["name"],
    createdOn: json["createdOn"],
    createdDate: json["createdDate"],
    createdTime: json["createdTime"],
    hasAttachments: json["hasAttachments"],
    attachments: List<Attachment>.from(json["attachments"].map((x) => Attachment.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "note": note,
    "name": name,
    "createdOn": createdOn,
    "createdDate": createdDate,
    "createdTime": createdTime,
    "hasAttachments": hasAttachments,
    "attachments": List<dynamic>.from(attachments.map((x) => x.toJson())),
  };
}

class Attachment {
  String attachment;
  String fileSize;

  Attachment({
    required this.attachment,
    required this.fileSize,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
    attachment: json["attachment"],
    fileSize: json["fileSize"],
  );

  Map<String, dynamic> toJson() => {
    "attachment": attachment,
    "fileSize": fileSize,
  };
}