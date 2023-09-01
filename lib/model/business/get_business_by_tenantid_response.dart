class GetBusinessByTenantIdResponse {
  int id;
  String universalId;
  String tenantId;
  String fullName;
  String companyNumber;
  String companyVatnumber;
  String address1;
  String address2;
  String postalCode;
  String city;
  String county;
  int countryId;
  String title;
  bool isCompany;
  String timezone;
  int fiscalYear;
  int weekStartOn;
  int timeFormatHour;
  int timeModel;
  int currencyId;
  int amountFormat;
  String webAddress;
  bool isSampleData;
  bool isInvoiceIdAutoGenerated;
  String invoicePrefix;
  int invoiceNextNumber;
  String invoiceTitle;
  String invoiceFooter;
  int invoicePaymentMethodId;
  String invoicePaymentDueTermsId;
  bool isEstimateIdAutoGenerated;
  String estimatePrefix;
  int estimateNextNumber;
  String estimateTitle;
  String estimateFooter;
  int estimatePaymentMethodId;
  String estimatePaymentDueTermsId;
  bool isEmailSendFromCapium;
  String emailSignature;
  bool isDefault;
  String logo;
  bool isVatRegistered;
  String defaultTaxId;
  String createdBy;
  String createdOn;
  String createdByName;
  List<BusinessContact> businessContacts;
  List<Setting> settings;

  GetBusinessByTenantIdResponse({
    required this.id,
    required this.universalId,
    required this.tenantId,
    required this.fullName,
    required this.companyNumber,
    required this.companyVatnumber,
    required this.address1,
    required this.address2,
    required this.postalCode,
    required this.city,
    required this.county,
    required this.countryId,
    required this.title,
    required this.isCompany,
    required this.timezone,
    required this.fiscalYear,
    required this.weekStartOn,
    required this.timeFormatHour,
    required this.timeModel,
    required this.currencyId,
    required this.amountFormat,
    required this.webAddress,
    required this.isSampleData,
    required this.isInvoiceIdAutoGenerated,
    required this.invoicePrefix,
    required this.invoiceNextNumber,
    required this.invoiceTitle,
    required this.invoiceFooter,
    required this.invoicePaymentMethodId,
    required this.invoicePaymentDueTermsId,
    required this.isEstimateIdAutoGenerated,
    required this.estimatePrefix,
    required this.estimateNextNumber,
    required this.estimateTitle,
    required this.estimateFooter,
    required this.estimatePaymentMethodId,
    required this.estimatePaymentDueTermsId,
    required this.isEmailSendFromCapium,
    required this.emailSignature,
    required this.isDefault,
    required this.logo,
    required this.isVatRegistered,
    required this.defaultTaxId,
    required this.createdBy,
    required this.createdOn,
    required this.createdByName,
    required this.businessContacts,
    required this.settings,
  });

  factory GetBusinessByTenantIdResponse.fromJson(Map<String, dynamic> json) => GetBusinessByTenantIdResponse(
    id: json["id"],
    universalId: json["universalId"],
    tenantId: json["tenantId"],
    fullName: json["fullName"],
    companyNumber: json["companyNumber"],
    companyVatnumber: json["companyVatnumber"],
    address1: json["address1"],
    address2: json["address2"],
    postalCode: json["postalCode"],
    city: json["city"],
    county: json["county"],
    countryId: json["countryId"],
    title: json["title"],
    isCompany: json["isCompany"],
    timezone: json["timezone"],
    fiscalYear: json["fiscalYear"],
    weekStartOn: json["weekStartOn"],
    timeFormatHour: json["timeFormatHour"],
    timeModel: json["timeModel"],
    currencyId: json["currencyId"],
    amountFormat: json["amountFormat"],
    webAddress: json["webAddress"],
    isSampleData: json["isSampleData"],
    isInvoiceIdAutoGenerated: json["isInvoiceIdAutoGenerated"],
    invoicePrefix: json["invoicePrefix"],
    invoiceNextNumber: json["invoiceNextNumber"],
    invoiceTitle: json["invoiceTitle"],
    invoiceFooter: json["invoiceFooter"],
    invoicePaymentMethodId: json["invoicePaymentMethodId"],
    invoicePaymentDueTermsId: json["invoicePaymentDueTermsId"],
    isEstimateIdAutoGenerated: json["isEstimateIdAutoGenerated"],
    estimatePrefix: json["estimatePrefix"],
    estimateNextNumber: json["estimateNextNumber"],
    estimateTitle: json["estimateTitle"],
    estimateFooter: json["estimateFooter"],
    estimatePaymentMethodId: json["estimatePaymentMethodId"],
    estimatePaymentDueTermsId: json["estimatePaymentDueTermsId"],
    isEmailSendFromCapium: json["isEmailSendFromCapium"],
    emailSignature: json["emailSignature"],
    isDefault: json["isDefault"],
    logo: json["logo"],
    isVatRegistered: json["isVatRegistered"],
    defaultTaxId: json["defaultTaxId"],
    createdBy: json["createdBy"],
    createdOn: json["createdOn"],
    createdByName: json["createdByName"],
    businessContacts: List<BusinessContact>.from(json["businessContacts"].map((x) => BusinessContact.fromJson(x))),
    settings: List<Setting>.from(json["settings"].map((x) => Setting.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "universalId": universalId,
    "tenantId": tenantId,
    "fullName": fullName,
    "companyNumber": companyNumber,
    "companyVatnumber": companyVatnumber,
    "address1": address1,
    "address2": address2,
    "postalCode": postalCode,
    "city": city,
    "county": county,
    "countryId": countryId,
    "title": title,
    "isCompany": isCompany,
    "timezone": timezone,
    "fiscalYear": fiscalYear,
    "weekStartOn": weekStartOn,
    "timeFormatHour": timeFormatHour,
    "timeModel": timeModel,
    "currencyId": currencyId,
    "amountFormat": amountFormat,
    "webAddress": webAddress,
    "isSampleData": isSampleData,
    "isInvoiceIdAutoGenerated": isInvoiceIdAutoGenerated,
    "invoicePrefix": invoicePrefix,
    "invoiceNextNumber": invoiceNextNumber,
    "invoiceTitle": invoiceTitle,
    "invoiceFooter": invoiceFooter,
    "invoicePaymentMethodId": invoicePaymentMethodId,
    "invoicePaymentDueTermsId": invoicePaymentDueTermsId,
    "isEstimateIdAutoGenerated": isEstimateIdAutoGenerated,
    "estimatePrefix": estimatePrefix,
    "estimateNextNumber": estimateNextNumber,
    "estimateTitle": estimateTitle,
    "estimateFooter": estimateFooter,
    "estimatePaymentMethodId": estimatePaymentMethodId,
    "estimatePaymentDueTermsId": estimatePaymentDueTermsId,
    "isEmailSendFromCapium": isEmailSendFromCapium,
    "emailSignature": emailSignature,
    "isDefault": isDefault,
    "logo": logo,
    "isVatRegistered": isVatRegistered,
    "defaultTaxId": defaultTaxId,
    "createdBy": createdBy,
    "createdOn": createdOn,
    "createdByName": createdByName,
    "businessContacts": List<dynamic>.from(businessContacts.map((x) => x.toJson())),
    "settings": List<dynamic>.from(settings.map((x) => x.toJson())),
  };
}

class BusinessContact {
  String universalId;
  int businessId;
  String title;
  String name;
  String email;
  String phone;
  bool isPrimary;
  bool isArchived;

  BusinessContact({
    required this.universalId,
    required this.businessId,
    required this.title,
    required this.name,
    required this.email,
    required this.phone,
    required this.isPrimary,
    required this.isArchived,
  });

  factory BusinessContact.fromJson(Map<String, dynamic> json) => BusinessContact(
    universalId: json["universalId"],
    businessId: json["businessId"],
    title: json["title"],
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
    isPrimary: json["isPrimary"],
    isArchived: json["isArchived"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "businessId": businessId,
    "title": title,
    "name": name,
    "email": email,
    "phone": phone,
    "isPrimary": isPrimary,
    "isArchived": isArchived,
  };
}

class Setting {
  String universalId;
  int settingTypeId;
  String settingName;
  String primaryName;
  String secondaryName;
  String settingValue;
  bool isSelected;
  int optionId;

  Setting({
    required this.universalId,
    required this.settingTypeId,
    required this.settingName,
    required this.primaryName,
    required this.secondaryName,
    required this.settingValue,
    required this.isSelected,
    required this.optionId,
  });

  factory Setting.fromJson(Map<String, dynamic> json) => Setting(
    universalId: json["universalId"],
    settingTypeId: json["settingTypeId"],
    settingName: json["settingName"],
    primaryName: json["primaryName"],
    secondaryName: json["secondaryName"],
    settingValue: json["settingValue"],
    isSelected: json["isSelected"],
    optionId: json["optionId"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "settingTypeId": settingTypeId,
    "settingName": settingName,
    "primaryName": primaryName,
    "secondaryName": secondaryName,
    "settingValue": settingValue,
    "isSelected": isSelected,
    "optionId": optionId,
  };
}
