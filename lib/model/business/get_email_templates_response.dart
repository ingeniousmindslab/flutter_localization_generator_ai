class GetEmailTemplatesResponse {
  int id;
  String templateTypeName;
  List<TemplateDetail> templateDetails;

  GetEmailTemplatesResponse({
    required this.id,
    required this.templateTypeName,
    required this.templateDetails,
  });

  factory GetEmailTemplatesResponse.fromJson(Map<String, dynamic> json) => GetEmailTemplatesResponse(
    id: json["id"],
    templateTypeName: json["templateTypeName"],
    templateDetails: List<TemplateDetail>.from(json["templateDetails"].map((x) => TemplateDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "templateTypeName": templateTypeName,
    "templateDetails": List<dynamic>.from(templateDetails.map((x) => x.toJson())),
  };
}

class TemplateDetail {
  String businessTemplateId;
  int templateId;
  String displayName;
  String subject;
  String templateHtml;
  String templateParams;
  String suggestedLabels;
  int businessId;
  String bannerImage;

  TemplateDetail({
    required this.businessTemplateId,
    required this.templateId,
    required this.displayName,
    required this.subject,
    required this.templateHtml,
    required this.templateParams,
    required this.suggestedLabels,
    required this.businessId,
    required this.bannerImage,
  });

  factory TemplateDetail.fromJson(Map<String, dynamic> json) => TemplateDetail(
    businessTemplateId: json["businessTemplateId"],
    templateId: json["templateId"],
    displayName: json["displayName"],
    subject: json["subject"],
    templateHtml: json["templateHtml"],
    templateParams: json["templateParams"],
    suggestedLabels: json["suggestedLabels"],
    businessId: json["businessId"],
    bannerImage: json["bannerImage"],
  );

  Map<String, dynamic> toJson() => {
    "businessTemplateId": businessTemplateId,
    "templateId": templateId,
    "displayName": displayName,
    "subject": subject,
    "templateHtml": templateHtml,
    "templateParams": templateParams,
    "suggestedLabels": suggestedLabels,
    "businessId": businessId,
    "bannerImage": bannerImage,
  };
}
