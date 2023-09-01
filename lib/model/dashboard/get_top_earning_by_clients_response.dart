class GetTopEarningByClientsResponse {
  String clientId;
  String clientName;
  double totalAmount;
  int dateFilter;

  GetTopEarningByClientsResponse({
    required this.clientId,
    required this.clientName,
    required this.totalAmount,
    required this.dateFilter,
  });

  factory GetTopEarningByClientsResponse.fromJson(Map<String, dynamic> json) =>
      GetTopEarningByClientsResponse(
        clientId: json["clientId"],
        clientName: json["clientName"],
        totalAmount: json["totalAmount"]?.toDouble() ?? 0.0,
        dateFilter: json["dateFilter"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "clientId": clientId,
        "clientName": clientName,
        "totalAmount": totalAmount,
        "dateFilter": dateFilter,
      };
}

class GetTopEarningByClientsData {
  List<GetTopEarningByClientsResponse> data;

  GetTopEarningByClientsData({required this.data});

  factory GetTopEarningByClientsData.fromJson(dynamic json) {
    if (json is List) {
      // Response with data (array containing content)
      List<GetTopEarningByClientsResponse> data = json
          .map((item) => GetTopEarningByClientsResponse.fromJson(item))
          .toList();
      return GetTopEarningByClientsData(data: data);
    } else {
      // Response with empty array or other unexpected data
      return GetTopEarningByClientsData(data: []);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      "data": data.map((item) => item.toJson()).toList(),
    };
  }
}
