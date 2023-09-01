class ExecuteSupplierListResponse {
  String? universalId;
  String supplierName;
  String createdByName;
  String createdOn;
  bool? isDeleted;
  int? totalItemCount;
  int? dateFilter;

  ExecuteSupplierListResponse(
      {this.universalId,
      required this.supplierName,
      required this.createdByName,
      required this.createdOn,
      this.isDeleted,
      this.totalItemCount,
      this.dateFilter});

  factory ExecuteSupplierListResponse.fromJson(Map<String, dynamic> json) =>
      ExecuteSupplierListResponse(
          universalId: json['universalId'],
          supplierName: json['supplierName'],
          createdByName: json['createdByName'],
          createdOn: json['createdOn'],
          isDeleted: json['isDeleted'],
          totalItemCount: json['totalItemCount'],
          dateFilter: json['dateFilter']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['universalId'] = this.universalId;
    data['supplierName'] = this.supplierName;
    data['createdByName'] = this.createdByName;
    data['createdOn'] = this.createdOn;
    data['isDeleted'] = this.isDeleted;
    data['totalItemCount'] = this.totalItemCount;
    data['dateFilter'] = this.dateFilter;
    return data;
  }
}
