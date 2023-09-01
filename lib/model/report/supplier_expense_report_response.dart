class SupplierExpenseReportResponse {
  int totalExpenseAmount;
  List<Supplier> suppliers;

  SupplierExpenseReportResponse({
    required this.totalExpenseAmount,
    required this.suppliers,
  });

  factory SupplierExpenseReportResponse.fromJson(Map<String, dynamic> json) => SupplierExpenseReportResponse(
    totalExpenseAmount: json["totalExpenseAmount"],
    suppliers: List<Supplier>.from(json["suppliers"].map((x) => Supplier.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "totalExpenseAmount": totalExpenseAmount,
    "suppliers": List<dynamic>.from(suppliers.map((x) => x.toJson())),
  };
}

class Supplier {
  String universalId;
  String supplierName;
  int amount;

  Supplier({
    required this.universalId,
    required this.supplierName,
    required this.amount,
  });

  factory Supplier.fromJson(Map<String, dynamic> json) => Supplier(
    universalId: json["universalId"],
    supplierName: json["supplierName"],
    amount: json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "universalId": universalId,
    "supplierName": supplierName,
    "amount": amount,
  };
}