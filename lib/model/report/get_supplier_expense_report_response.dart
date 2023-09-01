class GetSupplierExpenseReportResponse {
  double totalExpenseAmount;
  int? dateFilter;
  List<dynamic>? suppliers;
  int? totalSuppliers;

  GetSupplierExpenseReportResponse(
      {required this.totalExpenseAmount,
      this.dateFilter,
      this.suppliers,
      this.totalSuppliers});

  factory GetSupplierExpenseReportResponse.fromJson(
          Map<String, dynamic> json) =>
      GetSupplierExpenseReportResponse(
          totalExpenseAmount: json['totalExpenseAmount'],
          dateFilter: json['dateFilter'],
          suppliers: json['suppliers'],
          totalSuppliers: json['totalSuppliers']);
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalExpenseAmount'] = this.totalExpenseAmount;
    data['dateFilter'] = this.dateFilter;
    if (this.suppliers != null) {
      data['suppliers'] = this.suppliers!.map((v) => v.toJson()).toList();
    }
    data['totalSuppliers'] = this.totalSuppliers;
    return data;
  }
}
