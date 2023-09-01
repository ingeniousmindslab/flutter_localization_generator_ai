class ItemSalesReportResponse {
  int totalProfitAmount;
  List<Item> items;

  ItemSalesReportResponse({
    required this.totalProfitAmount,
    required this.items,
  });

  factory ItemSalesReportResponse.fromJson(Map<String, dynamic> json) => ItemSalesReportResponse(
    totalProfitAmount: json["totalProfitAmount"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "totalProfitAmount": totalProfitAmount,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  String universalId;
  String itemName;
  int amount;

  Item({
    required this.universalId,
    required this.itemName,
    required this.amount,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    universalId: json["universalId"],
    itemName: json["itemName"],
    amount: json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "itemName": itemName,
    "amount": amount,
  };
}