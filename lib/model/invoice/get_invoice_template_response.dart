class GetInvoiceTemplateResponse {
  String businessTemplateId;
  int templateId;
  String displayName;
  String subject;
  String templateHtml;
  String templateParams;
  String suggestedLabels;
  int businessId;
  String bannerImage;

  GetInvoiceTemplateResponse({
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

  factory GetInvoiceTemplateResponse.fromJson(Map<String, dynamic> json) => GetInvoiceTemplateResponse(
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