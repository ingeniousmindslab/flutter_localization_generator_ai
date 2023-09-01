class GetTopExpensesByCategoriesResponse {
  String categoryId;
  String categoryName;
  double totalAmount;

  GetTopExpensesByCategoriesResponse({
    required this.categoryId,
    required this.categoryName,
    required this.totalAmount,
  });

  factory GetTopExpensesByCategoriesResponse.fromJson(
          Map<String, dynamic> json) =>
      GetTopExpensesByCategoriesResponse(
        categoryId: json["categoryId"],
        categoryName: json["categoryName"],
        totalAmount: json["totalAmount"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "categoryName": categoryName,
        "totalAmount": totalAmount,
      };
}

class GetTopExpensesByCategoriesData {
  List<GetTopExpensesByCategoriesResponse> data;

  GetTopExpensesByCategoriesData({required this.data});

  factory GetTopExpensesByCategoriesData.fromJson(dynamic json) {
    if (json is List) {
      // Response with data (array containing content)
      List<GetTopExpensesByCategoriesResponse> data = json
          .map((item) => GetTopExpensesByCategoriesResponse.fromJson(item))
          .toList();
      return GetTopExpensesByCategoriesData(data: data);
    } else {
      // Response with empty array or other unexpected data
      return GetTopExpensesByCategoriesData(data: []);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "data": data.map((item) => item.toJson()).toList(),
    };
  }
}
