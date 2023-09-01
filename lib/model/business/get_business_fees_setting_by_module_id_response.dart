class GetBusinessFeesSettingByModuleIdResponse {
  int moduleId;
  String entityId;
  List<Setting> settings;
  List<Detail> details;

  GetBusinessFeesSettingByModuleIdResponse({
    required this.moduleId,
    required this.entityId,
    required this.settings,
    required this.details,
  });

  factory GetBusinessFeesSettingByModuleIdResponse.fromJson(Map<String, dynamic> json) => GetBusinessFeesSettingByModuleIdResponse(
    moduleId: json["moduleId"],
    entityId: json["entityId"],
    settings: List<Setting>.from(json["settings"].map((x) => Setting.fromJson(x))),
    details: List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "moduleId": moduleId,
    "entityId": entityId,
    "settings": List<dynamic>.from(settings.map((x) => x.toJson())),
    "details": List<dynamic>.from(details.map((x) => x.toJson())),
  };
}

class Detail {
  String additionalProp1;
  String additionalProp2;
  String additionalProp3;

  Detail({
    required this.additionalProp1,
    required this.additionalProp2,
    required this.additionalProp3,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
    additionalProp1: json["additionalProp1"],
    additionalProp2: json["additionalProp2"],
    additionalProp3: json["additionalProp3"],
  );

  Map<String, dynamic> toJson() => {
    "additionalProp1": additionalProp1,
    "additionalProp2": additionalProp2,
    "additionalProp3": additionalProp3,
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
