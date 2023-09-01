class GetItemResponse {
  String universalId;
  String itemName;
  String code;
  double unitPrice;
  String description;
  bool isTrack;
  bool isArchived;
  String createdOn;
  bool isDeleted;
  bool isDemoItem;
  bool isSampleData;

  GetItemResponse({
    required this.universalId,
    required this.itemName,
    required this.code,
    required this.unitPrice,
    required this.description,
    required this.isTrack,
    required this.isArchived,
    required this.createdOn,
    required this.isDeleted,
    required this.isDemoItem,
    required this.isSampleData,
  });

  factory GetItemResponse.fromJson(Map<String, dynamic> json) => GetItemResponse(
    universalId: json["universalId"],
    itemName: json["itemName"],
    code: json["code"],
    unitPrice: json["unitPrice"]?.toDouble(),
    description: json["description"],
    isTrack: json["isTrack"],
    isArchived: json["isArchived"],
    createdOn: json["createdOn"],
    isDeleted: json["isDeleted"],
    isDemoItem: json["isDemoItem"],
    isSampleData: json["isSampleData"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "itemName": itemName,
    "code": code,
    "unitPrice": unitPrice,
    "description": description,
    "isTrack": isTrack,
    "isArchived": isArchived,
    "createdOn": createdOn,
    "isDeleted": isDeleted,
    "isDemoItem": isDemoItem,
    "isSampleData": isSampleData,
  };
}