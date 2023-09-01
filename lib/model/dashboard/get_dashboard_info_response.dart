class GetDashboardInfoResponse {
  double totalInvoiceAmount;
  int totalClient;
  double totalInvoicePaidAmount;
  double totalInvoiceDueAmount;
  int totalItems;
  int itemPercentage;
  int clientPercentage;
  int itemPercentageYear;
  int clientPercentageYear;
  List<Invoice> invoices;
  List<Invoice> invoiceList;
  List<Client> clients;
  List<AnalyticLineChart> analyticLineChart;
  List<TransactionLineChart> clientLineChart;
  List<TransactionLineChart> itemLineChart;
  List<CategoryList> categoryList;

  GetDashboardInfoResponse({
    required this.totalInvoiceAmount,
    required this.totalClient,
    required this.totalInvoicePaidAmount,
    required this.totalInvoiceDueAmount,
    required this.totalItems,
    required this.itemPercentage,
    required this.clientPercentage,
    required this.itemPercentageYear,
    required this.clientPercentageYear,
    required this.invoices,
    required this.invoiceList,
    required this.clients,
    required this.analyticLineChart,
    required this.clientLineChart,
    required this.itemLineChart,
    required this.categoryList,
  });

  factory GetDashboardInfoResponse.fromJson(Map<String, dynamic> json) =>
      GetDashboardInfoResponse(
        totalInvoiceAmount: json["totalInvoiceAmount"]?.toDouble(),
        totalClient: json["totalClient"],
        totalInvoicePaidAmount: json["totalInvoicePaidAmount"],
        totalInvoiceDueAmount: json["totalInvoiceDueAmount"]?.toDouble(),
        totalItems: json["totalItems"],
        itemPercentage: json["itemPercentage"],
        clientPercentage: json["clientPercentage"],
        itemPercentageYear: json["itemPercentageYear"],
        clientPercentageYear: json["clientPercentageYear"],
        invoices: List<Invoice>.from(
            json["invoices"].map((x) => Invoice.fromJson(x))),
        invoiceList: List<Invoice>.from(
            json["invoiceList"].map((x) => Invoice.fromJson(x))),
        clients:
            List<Client>.from(json["clients"].map((x) => Client.fromJson(x))),
        analyticLineChart: List<AnalyticLineChart>.from(
            json["analyticLineChart"]
                .map((x) => AnalyticLineChart.fromJson(x))),
        clientLineChart: List<TransactionLineChart>.from(json["clientLineChart"]
            .map((x) => TransactionLineChart.fromJson(x))),
        itemLineChart: List<TransactionLineChart>.from(
            json["itemLineChart"].map((x) => TransactionLineChart.fromJson(x))),
        categoryList: List<CategoryList>.from(
            json["categoryList"].map((x) => CategoryList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalInvoiceAmount": totalInvoiceAmount,
        "totalClient": totalClient,
        "totalInvoicePaidAmount": totalInvoicePaidAmount,
        "totalInvoiceDueAmount": totalInvoiceDueAmount,
        "totalItems": totalItems,
        "itemPercentage": itemPercentage,
        "clientPercentage": clientPercentage,
        "itemPercentageYear": itemPercentageYear,
        "clientPercentageYear": clientPercentageYear,
        "invoices": List<dynamic>.from(invoices.map((x) => x.toJson())),
        "invoiceList": List<dynamic>.from(invoiceList.map((x) => x.toJson())),
        "clients": List<dynamic>.from(clients.map((x) => x.toJson())),
        "analyticLineChart":
            List<dynamic>.from(analyticLineChart.map((x) => x.toJson())),
        "clientLineChart":
            List<dynamic>.from(clientLineChart.map((x) => x.toJson())),
        "itemLineChart":
            List<dynamic>.from(itemLineChart.map((x) => x.toJson())),
        "categoryList": List<dynamic>.from(categoryList.map((x) => x.toJson())),
      };
}

class AnalyticLineChart {
  String createdInvoice;
  String received;
  String pending;
  String value;

  AnalyticLineChart({
    required this.createdInvoice,
    required this.received,
    required this.pending,
    required this.value,
  });

  factory AnalyticLineChart.fromJson(Map<String, dynamic> json) =>
      AnalyticLineChart(
        createdInvoice: json["createdInvoice"],
        received: json["received"],
        pending: json["pending"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "createdInvoice": createdInvoice,
        "received": received,
        "pending": pending,
        "value": value,
      };
}

class CategoryList {
  String universalId;
  String categoryName;
  int totalAmount;

  CategoryList({
    required this.universalId,
    required this.categoryName,
    required this.totalAmount,
  });

  factory CategoryList.fromJson(Map<String, dynamic> json) => CategoryList(
        universalId: json["universalId"],
        categoryName: json["categoryName"],
        totalAmount: json["totalAmount"],
      );

  Map<String, dynamic> toJson() => {
        "universalId": universalId,
        "categoryName": categoryName,
        "totalAmount": totalAmount,
      };
}

class TransactionLineChart {
  String count;
  String date;
  String monthName;

  TransactionLineChart({
    required this.count,
    required this.date,
    required this.monthName,
  });

  factory TransactionLineChart.fromJson(Map<String, dynamic> json) =>
      TransactionLineChart(
        count: json["count"],
        date: json["date"],
        monthName: json["monthName"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "date": date,
        "monthName": monthName,
      };
}

class Client {
  String universalId;
  String fullName;
  String title;
  String county;
  String address1;
  String address2;
  String postalCode;
  String city;
  bool isCompany;
  String companyNumber;
  dynamic vaTnumber;
  bool isArchived;
  String contactId;
  String clientId;
  dynamic name;
  dynamic email;
  dynamic phone;
  dynamic contactTitle;
  bool isPrimary;
  String paymentDueTermsId;
  int prefferedCurrencyId;
  int countryId;
  dynamic logo;
  int totalItemCount;
  String createdOn;
  List<dynamic> contacts;
  int dateFilter;

  Client({
    required this.universalId,
    required this.fullName,
    required this.title,
    required this.county,
    required this.address1,
    required this.address2,
    required this.postalCode,
    required this.city,
    required this.isCompany,
    required this.companyNumber,
    this.vaTnumber,
    required this.isArchived,
    required this.contactId,
    required this.clientId,
    this.name,
    this.email,
    this.phone,
    this.contactTitle,
    required this.isPrimary,
    required this.paymentDueTermsId,
    required this.prefferedCurrencyId,
    required this.countryId,
    this.logo,
    required this.totalItemCount,
    required this.createdOn,
    required this.contacts,
    required this.dateFilter,
  });

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        universalId: json["universalId"],
        fullName: json["fullName"],
        title: json["title"],
        county: json["county"],
        address1: json["address1"],
        address2: json["address2"],
        postalCode: json["postalCode"],
        city: json["city"],
        isCompany: json["isCompany"],
        companyNumber: json["companyNumber"],
        vaTnumber: json["vaTnumber"],
        isArchived: json["isArchived"],
        contactId: json["contactId"],
        clientId: json["clientId"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        contactTitle: json["contactTitle"],
        isPrimary: json["isPrimary"],
        paymentDueTermsId: json["paymentDueTermsId"],
        prefferedCurrencyId: json["prefferedCurrencyId"],
        countryId: json["countryId"],
        logo: json["logo"],
        totalItemCount: json["totalItemCount"],
        createdOn: json["createdOn"],
        contacts: List<dynamic>.from(json["contacts"].map((x) => x)),
        dateFilter: json["dateFilter"],
      );

  Map<String, dynamic> toJson() => {
        "universalId": universalId,
        "fullName": fullName,
        "title": title,
        "county": county,
        "address1": address1,
        "address2": address2,
        "postalCode": postalCode,
        "city": city,
        "isCompany": isCompany,
        "companyNumber": companyNumber,
        "vaTnumber": vaTnumber,
        "isArchived": isArchived,
        "contactId": contactId,
        "clientId": clientId,
        "name": name,
        "email": email,
        "phone": phone,
        "contactTitle": contactTitle,
        "isPrimary": isPrimary,
        "paymentDueTermsId": paymentDueTermsId,
        "prefferedCurrencyId": prefferedCurrencyId,
        "countryId": countryId,
        "logo": logo,
        "totalItemCount": totalItemCount,
        "createdOn": createdOn,
        "contacts": List<dynamic>.from(contacts.map((x) => x)),
        "dateFilter": dateFilter,
      };
}

class Invoice {
  String universalId;
  String invoiceNo;
  String clientId;
  String clientFullName;
  dynamic externalEstimateId;
  String invoiceDate;
  String dueDate;
  int dueDays;
  double totalAmount;
  double paidAmount;
  double dueAmmount;
  int status;
  dynamic lastRecievedDate;
  dynamic sentOn;
  bool isDeleted;
  bool isRecurring;
  dynamic schedule;
  String firstInvoice;
  String createdOn;
  int totalItemCount;
  int dateFilter;

  Invoice({
    required this.universalId,
    required this.invoiceNo,
    required this.clientId,
    required this.clientFullName,
    this.externalEstimateId,
    required this.invoiceDate,
    required this.dueDate,
    required this.dueDays,
    required this.totalAmount,
    required this.paidAmount,
    required this.dueAmmount,
    required this.status,
    this.lastRecievedDate,
    this.sentOn,
    required this.isDeleted,
    required this.isRecurring,
    this.schedule,
    required this.firstInvoice,
    required this.createdOn,
    required this.totalItemCount,
    required this.dateFilter,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
        universalId: json["universalId"],
        invoiceNo: json["invoiceNo"],
        clientId: json["clientId"],
        clientFullName: json["clientFullName"],
        externalEstimateId: json["externalEstimateId"],
        invoiceDate: json["invoiceDate"],
        dueDate: json["dueDate"],
        dueDays: json["dueDays"],
        totalAmount: json["totalAmount"]?.toDouble(),
        paidAmount: json["paidAmount"],
        dueAmmount: json["dueAmmount"]?.toDouble(),
        status: json["status"],
        lastRecievedDate: json["lastRecievedDate"],
        sentOn: json["sentOn"],
        isDeleted: json["isDeleted"],
        isRecurring: json["isRecurring"],
        schedule: json["schedule"],
        firstInvoice: json["firstInvoice"],
        createdOn: json["createdOn"],
        totalItemCount: json["totalItemCount"],
        dateFilter: json["dateFilter"],
      );

  Map<String, dynamic> toJson() => {
        "universalId": universalId,
        "invoiceNo": invoiceNo,
        "clientId": clientId,
        "clientFullName": clientFullName,
        "externalEstimateId": externalEstimateId,
        "invoiceDate": invoiceDate,
        "dueDate": dueDate,
        "dueDays": dueDays,
        "totalAmount": totalAmount,
        "paidAmount": paidAmount,
        "dueAmmount": dueAmmount,
        "status": status,
        "lastRecievedDate": lastRecievedDate,
        "sentOn": sentOn,
        "isDeleted": isDeleted,
        "isRecurring": isRecurring,
        "schedule": schedule,
        "firstInvoice": firstInvoice,
        "createdOn": createdOn,
        "totalItemCount": totalItemCount,
        "dateFilter": dateFilter,
      };
}
