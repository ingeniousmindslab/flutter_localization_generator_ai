class GetBusinessFeesSettingResponse {
  String universalId;
  int settingTypeId;
  String settingName;
  String primaryName;
  String secondaryName;
  String settingValue;
  bool isSelected;
  int optionId;

  GetBusinessFeesSettingResponse({
    required this.universalId,
    required this.settingTypeId,
    required this.settingName,
    required this.primaryName,
    required this.secondaryName,
    required this.settingValue,
    required this.isSelected,
    required this.optionId,
  });

  factory GetBusinessFeesSettingResponse.fromJson(Map<String, dynamic> json) => GetBusinessFeesSettingResponse(
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