class ExecuteCategoryListResponse {
  String universalId;
  String categoryName;
  String createdByName;
  DateTime createdOn;
  bool isDeleted;
  int totalItemCount;
  int dateFilter;

  ExecuteCategoryListResponse({
    required this.universalId,
    required this.categoryName,
    required this.createdByName,
    required this.createdOn,
    required this.isDeleted,
    required this.totalItemCount,
    required this.dateFilter,
  });

  factory ExecuteCategoryListResponse.fromJson(Map<String, dynamic> json) {
    return ExecuteCategoryListResponse(
      universalId: json['universalId'],
      categoryName: json['categoryName'],
      createdByName: json['createdByName'],
      createdOn: DateTime.parse(json['createdOn']),
      isDeleted: json['isDeleted'],
      totalItemCount: json['totalItemCount'],
      dateFilter: json['dateFilter'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['universalId'] = this.universalId;
    data['categoryName'] = this.categoryName;
    data['createdByName'] = this.createdByName;
    data['createdOn'] = this.createdOn.toIso8601String();
    data['isDeleted'] = this.isDeleted;
    data['totalItemCount'] = this.totalItemCount;
    data['dateFilter'] = this.dateFilter;
    return data;
  }
}
