class GetActivityLogResponse {
  String month;
  int year;
  List<ActivityModel> activityModels;

  GetActivityLogResponse({
    required this.month,
    required this.year,
    required this.activityModels,
  });

  factory GetActivityLogResponse.fromJson(Map<String, dynamic> json) => GetActivityLogResponse(
    month: json["month"],
    year: json["year"],
    activityModels: List<ActivityModel>.from(json["activityModels"].map((x) => ActivityModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "month": month,
    "year": year,
    "activityModels": List<dynamic>.from(activityModels.map((x) => x.toJson())),
  };
}

class ActivityModel {
  String createdByName;
  String createdByPhoto;
  int moduleId;
  int entityTypeId;
  int businessId;
  String tenantId;
  String createdById;
  String activityDate;
  String endDate;
  String startDate;
  List<Entity> entities;

  ActivityModel({
    required this.createdByName,
    required this.createdByPhoto,
    required this.moduleId,
    required this.entityTypeId,
    required this.businessId,
    required this.tenantId,
    required this.createdById,
    required this.activityDate,
    required this.endDate,
    required this.startDate,
    required this.entities,
  });

  factory ActivityModel.fromJson(Map<String, dynamic> json) => ActivityModel(
    createdByName: json["createdByName"],
    createdByPhoto: json["createdByPhoto"],
    moduleId: json["moduleId"],
    entityTypeId: json["entityTypeId"],
    businessId: json["businessId"],
    tenantId: json["tenantId"],
    createdById: json["createdById"],
    activityDate: json["activityDate"],
    endDate: json["endDate"],
    startDate: json["startDate"],
    entities: List<Entity>.from(json["entities"].map((x) => Entity.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "createdByName": createdByName,
    "createdByPhoto": createdByPhoto,
    "moduleId": moduleId,
    "entityTypeId": entityTypeId,
    "businessId": businessId,
    "tenantId": tenantId,
    "createdById": createdById,
    "activityDate": activityDate,
    "endDate": endDate,
    "startDate": startDate,
    "entities": List<dynamic>.from(entities.map((x) => x.toJson())),
  };
}

class Entity {
  String universalId;
  String name;
  int amount;
  bool hasAttachment;
  List<String> toEmail;
  String note;
  List<Attachment> attachments;
  String providerType;
  int providerTypeId;
  String previousStatus;
  String newStatus;
  String customMessage;
  String paymentMethodName;

  Entity({
    required this.universalId,
    required this.name,
    required this.amount,
    required this.hasAttachment,
    required this.toEmail,
    required this.note,
    required this.attachments,
    required this.providerType,
    required this.providerTypeId,
    required this.previousStatus,
    required this.newStatus,
    required this.customMessage,
    required this.paymentMethodName,
  });

  factory Entity.fromJson(Map<String, dynamic> json) => Entity(
    universalId: json["universalId"],
    name: json["name"],
    amount: json["amount"],
    hasAttachment: json["hasAttachment"],
    toEmail: List<String>.from(json["toEmail"].map((x) => x)),
    note: json["note"],
    attachments: List<Attachment>.from(json["attachments"].map((x) => Attachment.fromJson(x))),
    providerType: json["providerType"],
    providerTypeId: json["providerTypeId"],
    previousStatus: json["previousStatus"],
    newStatus: json["newStatus"],
    customMessage: json["customMessage"],
    paymentMethodName: json["paymentMethodName"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "name": name,
    "amount": amount,
    "hasAttachment": hasAttachment,
    "toEmail": List<dynamic>.from(toEmail.map((x) => x)),
    "note": note,
    "attachments": List<dynamic>.from(attachments.map((x) => x.toJson())),
    "providerType": providerType,
    "providerTypeId": providerTypeId,
    "previousStatus": previousStatus,
    "newStatus": newStatus,
    "customMessage": customMessage,
    "paymentMethodName": paymentMethodName,
  };
}

class Attachment {
  String attachmentName;
  String url;
  String size;

  Attachment({
    required this.attachmentName,
    required this.url,
    required this.size,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
    attachmentName: json["attachmentName"],
    url: json["url"],
    size: json["size"],
  );

  Map<String, dynamic> toJson() => {
    "attachmentName": attachmentName,
    "url": url,
    "size": size,
  };
}