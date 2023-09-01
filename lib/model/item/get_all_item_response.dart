class GetAllItemResponse {
  String universalId;
  String itemName;
  String code;
  double unitPrice;
  String description;
  bool? isTrack;
  bool isArchived;
  String createdOn;
  bool isDeleted;
  bool? isDemoItem;
  bool? isSampleData;
  int totalItemCount, dateFilter;

  GetAllItemResponse({
    required this.universalId,
    required this.itemName,
    required this.code,
    required this.unitPrice,
    required this.description,
    this.isTrack,
    required this.isArchived,
    required this.createdOn,
    required this.isDeleted,
    this.isDemoItem,
    this.isSampleData,
    required this.totalItemCount,
    required this.dateFilter,
  });

  factory GetAllItemResponse.fromJson(Map<String, dynamic> json) =>
      GetAllItemResponse(
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
        totalItemCount: json["totalItemCount"],
        dateFilter: json["dateFilter"],
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
        "totalItemCount": totalItemCount,
        "dateFilter": dateFilter,
      };
}
