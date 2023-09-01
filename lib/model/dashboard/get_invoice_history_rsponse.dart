class GetInvoiceHistoryResponse {
  Summary summary;
  List<LineChart> lineCharts;

  GetInvoiceHistoryResponse({
    required this.summary,
    required this.lineCharts,
  });

  factory GetInvoiceHistoryResponse.fromJson(Map<String, dynamic> json) => GetInvoiceHistoryResponse(
    summary: Summary.fromJson(json["summary"]),
    lineCharts: List<LineChart>.from(json["lineCharts"].map((x) => LineChart.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "summary": summary.toJson(),
    "lineCharts": List<dynamic>.from(lineCharts.map((x) => x.toJson())),
  };
}

class LineChart {
  String raisedInvoicesTotalAmount;
  String receivedInvoicesTotalAmount;
  String dueInvoiceTotalAmount;
  String label;

  LineChart({
    required this.raisedInvoicesTotalAmount,
    required this.receivedInvoicesTotalAmount,
    required this.dueInvoiceTotalAmount,
    required this.label,
  });

  factory LineChart.fromJson(Map<String, dynamic> json) => LineChart(
    raisedInvoicesTotalAmount: json["raisedInvoicesTotalAmount"],
    receivedInvoicesTotalAmount: json["receivedInvoicesTotalAmount"],
    dueInvoiceTotalAmount: json["dueInvoiceTotalAmount"],
    label: json["label"],
  );

  Map<String, dynamic> toJson() => {
    "raisedInvoicesTotalAmount": raisedInvoicesTotalAmount,
    "receivedInvoicesTotalAmount": receivedInvoicesTotalAmount,
    "dueInvoiceTotalAmount": dueInvoiceTotalAmount,
    "label": label,
  };
}

class Summary {
  String totalRaisedAmount;
  String totalReceivedAmount;
  String totalDueAmount;
  String totalOverDueAmount;

  Summary({
    required this.totalRaisedAmount,
    required this.totalReceivedAmount,
    required this.totalDueAmount,
    required this.totalOverDueAmount,
  });

  factory Summary.fromJson(Map<String, dynamic> json) => Summary(
    totalRaisedAmount: json["totalRaisedAmount"],
    totalReceivedAmount: json["totalReceivedAmount"],
    totalDueAmount: json["totalDueAmount"],
    totalOverDueAmount: json["totalOverDueAmount"],
  );

  Map<String, dynamic> toJson() => {
    "totalRaisedAmount": totalRaisedAmount,
    "totalReceivedAmount": totalReceivedAmount,
    "totalDueAmount": totalDueAmount,
    "totalOverDueAmount": totalOverDueAmount,
  };
}