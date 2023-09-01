class GetStarredResponse {
  int pageNumber;
  int pageSize;
  String sortBy;
  bool sortOrder;
  String search;
  int dateFilter;
  String startDate;
  String endDate;
  List<String> universalIds;
  String parentId;

  GetStarredResponse({
    required this.pageNumber,
    required this.pageSize,
    required this.sortBy,
    required this.sortOrder,
    required this.search,
    required this.dateFilter,
    required this.startDate,
    required this.endDate,
    required this.universalIds,
    required this.parentId,
  });

  factory GetStarredResponse.fromJson(Map<String, dynamic> json) => GetStarredResponse(
    pageNumber: json["pageNumber"],
    pageSize: json["pageSize"],
    sortBy: json["sortBy"],
    sortOrder: json["sortOrder"],
    search: json["search"],
    dateFilter: json["dateFilter"],
    startDate: json["startDate"],
    endDate: json["endDate"],
    universalIds: List<String>.from(json["universalIds"].map((x) => x)),
    parentId: json["parentId"],
  );

  Map<String, dynamic> toJson() => {
    "pageNumber": pageNumber,
    "pageSize": pageSize,
    "sortBy": sortBy,
    "sortOrder": sortOrder,
    "search": search,
    "dateFilter": dateFilter,
    "startDate": startDate,
    "endDate": endDate,
    "universalIds": List<dynamic>.from(universalIds.map((x) => x)),
    "parentId": parentId,
  };
}
