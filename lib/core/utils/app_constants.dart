class AppConstants {
  static const baseUrl = "https://diybooxapi.dev.capium.co.uk/api/v1/";
  static const baseUrlAuth = 'https://identity.dev.capium.co.uk/';
  static const baseUrlBank = 'https://bankapi.dev.capium.co.uk/api/v1/';
  static const baseUrlDrive = 'https://driveapi.dev.capium.co.uk/api/v1/';

  //business
  static const businessGet = "Business/get";
  static const getBusinessByTenantId = "Business/getBusinessByTenantId";
  static const getTitle = "Business/getTitles";
  static const getBusinessInvoice = "Business/getBusinessInvoice";
  static const getBusinessEstimate = "Business/getBusinessEstimate";
  static const getEmailTemplate = "Business/getEmailTemplates";
  static const getCountrieList = "Business/getCountrieList";
  static const getCompany = "Business/getCompany";
  static const getCurrencyList = "Business/getCurrencyList";
  static const getActivityLog = "Business/getActivityLog";
  static const getReminderType = "Business/getReminderTypes";
  static const isBusinessDataFound = "Business/isBusinessDataFound/";
  static const getBusinessFeesSetting = "Business/getBusinessFeesSetting";
  static const getBusinessFeesSettingByModuleId =
      "Business/GetBusinessFeesSettingByModuleId/";
  static const getImportList = "Business/getImportList";
  static const getBusinessTax = "Business/getBusinessTax";
  static const getBusinessPaymentDetails = "Business/getBusinessPaymentDetails";
  static const sampleData = "Business/sampleData/";
  static const createBasicInfo = "Business/createBasicInfo";
  static const saveEmailTemplates = "Business/SaveEmailTemplates";
  static const savePaymentDetails = "Business/savePaymentDetails";
  static const updatePreferences = "Business/updatePreferences";
  static const updateBasicInfo = "Business/updateBasicInfo";
  static const updateInvoiceInfo = "Business/updateInvoiceInfo";
  static const updateEstimateInfo = "Business/updateEstimateInfo";
  static const updateSignature = "Business/updateSignature";
  static const updateEmailConfig = "Business/updateEmailConfig/";
  static const saveBusinessFreeSetting = "Business/saveBusinessFeesSetting";
  static const saveBusinessFeesSettingByModuleId =
      "Business/SaveBusinessFeesSettingByModuleId";

  //client
  static const getAllClient = "Client/getAllClient";
  static const getUniversalId = "Client/get/";
  static const clientsList = "Client/clientsList";
  static const allClients = "Client/allClients";
  static const create = "Client/create";
  static const executeClientList = "Client/executeClientList";
  static const cpoyClients = "Client/copyClients";
  static const export = "Client/export";
  static const getImportTemplate = "Client/getImportTemplate";
  static const import = "Client/import";
  static const update = "Client/update";
  static const status = "Client/status";
  static const deleteClients = "Client/deleteClients";

  //Dashboard
  static const getDashboardInfo = "Dashboard/getDashboardInfo?filter=";
  static const getInvoiceHistory = "Dashboard/getInvoiceHistory?filter=";
  static const getTopEarningByClients =
      "Dashboard/GetTopEarningByClients?filter=";
  static const getTopExpensesBycategories =
      "Dashboard/GetTopExpensesByCategories?filter=";

  //Dummy
  static const getLoggedInUser = "Dummy/getLoggedInUser";

  //Estimates
  static const estimatesGetUniversalId = "Estimates/get";
  static const estimatesList = "Estimates/estimatesList";
  static const getEstimateTemplate = "Estimates/getEstimateTemplate";
  static const viewEstimateRecipt = "Estimates/viewEstimateReceipt/";
  static const save = "Estimates/save";
  static const executeEstimateList = "Estimates/executeEstimateList";
  static const estimatesAction = "Estimates/estimatesAction";
  static const duplicateEstimatesc = "Estimates/duplicateEstimates";
  static const exportToPdf = "Estimates/exportToPdf";
  static const exportEstimates = "Estimates/export";
  static const note = "Estimates/Create/note/";
  static const send = "Estimates/send";
  static const sendEstimate = "Estimates/sendEstimate";
  static const convertToInvoice = "Estimates/convertToInvoice";
  static const deleteEstimates = "Estimates/deleteEstimates";

  //File
  static const upload = "File/upload";
  static const download = "File/download";
  static const multiFileuploadFiles = "File/multiFileuploadFiles";
  static const multiFiledownload = "File/MultiFiledownload";

  //Invoice
  static const getInvoice = "Invoice/get/";
  static const summary = "Invoice/summary";
  static const getInvoicePayment = "Invoice/getInvoicePayment/";
  static const amountDue = "Invoice/amountDue/";
  static const invoicesList = "Invoice/invoicesList";
  static const getInvoiceRecentHistory = "Invoice/getInvoiceRecentHistory/";
  static const getInvoiceTemplate = "Invoice/getInvoiceTemplate";
  static const getInvoiceReminders = "Invoice/getInvoiceReminders/";
  static const viewInvoiceReceipt = "Invoice/viewInvoiceReceipt/";
  static const executeInvoiceList = "Invoice/executeInvoiceList";
  static const createBankfeedInvoice = "Invoice/createBankfeedInvoice/";
  static const searchInvoices = "Invoice/searchInvoices";
  static const transactionInvoice = "Invoice/transactionInvoice";
  static const saveInvoice = "Invoice/save";
  static const saveInvoicePayment = "Invoice/saveInvoicePayment/";
  static const noteInvoice = "Invoice/note/";
  static const exportToPdfInvoice = "Invoice/exportToPdf";
  static const invoiceexport = "Invoice/export";
  static const duplicateInvoice = "Invoice/export";
  static const exportPaymentToPdf = "Invoice/exportPaymentToPdf/";
  static const sendInvoiceReceipt = "Invoice/sendInvoiceReceipt/";
  static const sendPaymentReceipt = "Invoice/sendPaymentReceipt/";
  static const saveReminder = "Invoice/saveReminder/";
  static const invoicesend = "Invoice/send/";
  static const sendInvoiceReminder = "Invoice/sendInvoiceReminder/";
  static const listInvoicePayment = "Invoice/listInvoicePayment";
  static const updateStatus = "Invoice/updateStatus";
  static const deleteInvoicePayment = "Invoice/deleteInvoicePayment/";
  static const deleteInvoices = "Invoice/deleteInvoices";
  static const deleteAllInvoicePayment = "Invoice/deleteAllInvoicePayment/";
  static const deleteReminders = "Invoice/deleteReminders/";
  static const deleteAllPaymentsAndReminders =
      "Invoice/deleteAllPaymentsAndReminders/";

  //Item
  static const list = "Item/list";
  static const getItem = "Item/get/";
  static const itemsList = "Item/itemsList";
  static const getAllItem = "Item/getAllItem";
  static const createItem = "Item/create";
  static const executeItemList = "Item/executeItemList";
  static const exportItem = "Item/export";
  static const isItemCodeExistInCompany = "Item/IsItemCodeExistInCompany";
  static const copyItems = "Item/copyItems";
  static const getImportTemplateItem = "Item/getImportTemplate";
  static const importItem = "Item/import/";
  static const updateItem = "Item/update";
  static const statusItem = "Item/status";
  static const deleteItem = "Item/delete/";
  static const deleteItems = "Items/deleteItems";

  //Payment
  static const stripePaymentWebhook = "Payment/StripePaymentWebhook";
  static const disconnectPaymentAccount = "Payment/DisconnectPaymentAccount";

  //PaymentDueTerms
  static const listPaymentDueTerms = "PaymentDueTerms/list";
  static const getPaymentDueTerms = "PaymentDueTerms/get";
  static const paymentDueTerm = "PaymentDueTerms/paymentDueTerm";
  static const updatePaymentDueTerms = "PaymentDueTerms/update";

  //PaymentMethods
  static const getPaymentMethods = "PaymentMethods/get/";
  static const listPaymentMethods = "PaymentMethods/list";
  static const exportPaymentMethods = "PaymentMethods/export";

  //ProviderAccount
  static const reAuthenticte = "ProviderAccount/reAuthenticte/";
  static const prepareStripe = "ProviderAccount/prepareStripe";
  static const stripeRedirect = "ProviderAccount/stripeRedirect";
  static const prepareGoogle = "ProviderAccount/prepareGoogle";
  static const googleRedirect = "ProviderAccount/GoogleRedirect";
  static const prepareOffice = "ProviderAccount/prepareOffice";
  static const officeRedirect = "ProviderAccount/OfficeRedirect";
  static const getAllMail = "ProviderAccount/getAllMail/";
  static const deleteMail = "ProviderAccount/deleteMail/";
  static const defaultMail = "ProviderAccount/defaultMail/";
  static const getAllMails = "ProviderAccount/getAllMails";

  //Receipt
  static const isReceiptHubConnected = "Receipt/IsReceiptHubConnected";
  static const receipt = "Receipt/Receipt/";
  static const receiptsList = "Receipt/receiptsList";
  static const receiptTransaction = "Receipt/receiptTransaction";
  static const searchReceipts = "Receipt/searchReceipts";
  static const executeReceiptInboxList = "Receipt/executeReceiptInboxList";
  static const executeDuplicateReceiptList =
      "Receipt/executeDuplicateReceiptList";
  static const exportReceipt = "Receipt/export";
  static const processDuplicates = "Receipt/processDuplicates";
  static const getTransactionsReceipts = "Receipt/GetTransactionsReceipts";
  static const createBnakfeedReceipt = "Receipt/createBnakfeedReceipt/";
  static const receipttransaction = "Receipt/transaction";
  static const transactionReceipt = "Receipt/transactionReceipt";
  static const transactionReceiptUrl = "Receipt/transactionReceiptUrl";
  static const transactionLinkedList = "Receipt/transactionLinkedList/";
  static const uploadReceipt = 'Receipt/upload';
  static const exportDuplicateReceipt = "Receipt/exportDuplicateReceipt";
  static const sendReceiptEmail = "Receipt/sendReceiptEmail";
  static const receiptUpdate = "Receipt/update";
  static const updatePaidStatus = "Receipt/updatePaidStatus";
  static const markAsApproved = "Receipt/markAsApproved";
  static const withdrawApproval = "Receipt/withdrawApproval";
  static const updateArchiveStatus = "Receipt/updateArchiveStatus";
  static const transactionunlink = "Receipt/transaction/unlink";
  static const bankunlink = "Receipt/bank/unlink";
  static const transactionlink = "Receipt/transaction/link";
  static const deleteReceipts = "Receipt/deleteReceipts";

  //ReceiptCategory
  static const receiptCategory = "ReceiptCategory/";
  static const deleteReceiptCategory = "ReceiptCategory/";
  static const getAllCategory = "ReceiptCategory/getAllCategory";
  static const categoryList = "ReceiptCategory/categoryList";
  static const createReceiptCategory = "ReceiptCategory/";
  static const categoryReceipt = "ReceiptCategory/";
  static const copyReceiptCategories = "ReceiptCategory/copyReceiptCategories";
  static const executeReceiptCategoryList =
      "ReceiptCategory/executeReceiptCategoryList";
  static const exportReceiptCategory = "ReceiptCategory/export";
  static const getImportTemplateReceiptCategory =
      "ReceiptCategory/getImportTemplate";
  static const importReceiptCategory = "ReceiptCategory/import";
  static const multipleDelete = "ReceiptCategory/multipleDelete/";

  //ReceiptDashBoard
  static const getDashboard = "ReceiptDashBoard/getDashboard";
  static const executeReceiptDashboardList =
      "ReceiptDashBoard/executeReceiptDashboardList";

  //ReceiptSupplier
  static const receiptSupplier = "ReceiptSupplier";
  static const receiptSupplierDelete = "ReceiptSupplier";
  static const getAllSupplier = "ReceiptSupplier/getAllSupplier";
  static const suppliersList = "ReceiptSupplier/suppliersList";
  static const receiptSuppliercreate = "ReceiptSupplier/ReceiptSupplier";
  static const receiptSupplierUpdate = "ReceiptSupplier";
  static const executeReceiptSupplierList =
      "ReceiptSupplier/executeReceiptSupplierList";
  static const copyReceiptSupplier = "ReceiptSupplier/copyReceiptSupplier";
  static const exportReceiptSupplier = "ReceiptSupplier/exportReceiptSupplier";
  static const getImportTemplateReceiptSupplie =
      "ReceiptSupplier/getImportTemplate";
  static const importReceiptSupplie = "ReceiptSupplier/import";
  static const multipleDeleteReceiptSupplier = "ReceiptSupplier/multipleDelete";

  //ReceiptType
  static const receipttypeList = "ReceiptType/receiptTypeList";
  static const getReceiptType = "ReceiptType/get/";
  static const getAllReceiptType = "ReceiptType/getAllReceiptType";
  static const executeReceiptTypeList = "ReceiptType/executeReceiptTypeList";
  static const createReceiptType = "ReceiptType/createReceiptType";
  static const copyReceiptType = "ReceiptType/copyReceiptType";
  static const exportReceiptType = "ReceiptType/exportReceiptType";
  static const getImportTemplateReceiptType = "ReceiptType/getImportTemplate";
  static const importReceiptType = "ReceiptType/importReceiptType";
  static const updateReceiptType = "ReceiptType/updateReceiptType";
  static const deleteReceiptType = "ReceiptType/deleteReceiptType";

  //RecurringInvoice
  static const getRecurringInvoiceByUniversalId =
      "RecurringInvoice/getRecurringInvoiceByUniversalId";
  static const executeRecurringInvoiceList =
      "RecurringInvoice/executeRecurringInvoiceList";
  static const getScheduleSettingByInvoiceId =
      "RecurringInvoice/getScheduleSettingByInvoiceId";
  static const getScheduleSettingByUniversalId =
      "RecurringInvoice/getScheduleSettingByUniversalId";
  static const saveInvoiceScheduleSetting =
      "RecurringInvoice/saveInvoiceScheduleSetting";
  static const saveRecurringInvoiceScheduleSetting =
      "RecurringInvoice/saveRecurringInvoiceScheduleSetting";
  static const saveRecurringInvoice = "RecurringInvoice/saveRecurringInvoice";
  static const getRecurringInvoiceList =
      "RecurringInvoice/getRecurringInvoiceList";
  static const updateRecurringInvoiceStatus =
      "RecurringInvoice/updateRecurringInvoiceStatus";
  static const duplicateInvoicesByUniversalId =
      "RecurringInvoice/duplicateInvoicesByUniversalId";
  static const deleteRecurringInvoice =
      "RecurringInvoice/deleteRecurringInvoice";

  //Report
  static const clientSalesReport = "Report/clientSalesReport";
  static const salesSummary = "Report/salesSummary";
  static const exportSalesReport = "Report/exportSalesReport";
  static const suppliersExpensesReport = "Report/suppliersExpensesReport";
  static const categoryExpensesReport = 'Report/categoryExpensesReport';
  static const expensesSummary = "Report/expensesSummary";
  static const exportExpensesReport = "Report/exportExpensesReport";
  static const profitAndSalesSummary = "Report/profitAndSalesSummary";
  static const clientSalesReports = "Report/profitAndLoss/clientSalesReport";
  static const itemSalesReport = "Report/profitAndLoss/itemSalesReport";
  static const supplierExpensesReport =
      "Report/profitAndLoss/supplierExpensesReport";
  static const categoryProfitReport =
      "Report/profitAndLoss/categoryExpensesReport";
  static const exportProfitAndLossReport = "Report/exportProfitAndLossReport";

  //Role
  static const getRole = "Role/get/";
  static const getRoleList = "Role/rolesList";
  static const allRoles = "Role/allRoles";
  static const executeRoleList = "Role/executeRoleList";
  static const createRole = "Role/create";
  static const exportRole = 'Role/export';
  static const copyRoles = 'Role/copyRoles';
  static const importRoles = 'Role/import';
  static const getImportRoleTemplate = 'Role/getImportTemplate';
  static const updateRole = 'Role/update';
  static const deleteSpecificRole = 'Role/delete/';
  static const deleteRole = 'Role/deleteRoles';
  static const restoreRole = 'Role/status';

  //Taxes
  static const getTaxes = 'Taxes/list';
  static const getTaxByUniversalId = 'Taxes/getTaxByUniversalId/';
  static const getVatTaxes = 'Taxes/getDefaultVatTaxes';
  static const getTaxesList = 'Taxes/taxesList';
  static const executeTaxList = 'Taxes/executeTaxList';
  static const createTaxes = 'Taxes/create';
  static const exportTaxes = 'Taxes/export';
  static const copyTaxes = 'Taxes/copyTaxes';
  static const getImportTaxesTemplate = 'Taxes/getImportTemplate';
  static const importTaxes = 'Taxes/import';
  static const updateTaxes = 'Taxes/update';
  static const taxDefaultStatus = 'Taxes/MarkDefaultStatus/';
  static const archiveTaxes = 'Taxes/status';
  static const deleteTaxes = 'Taxes/delete/';
  static const deleteAllTaxes = 'Taxes/deleteTaxes';

  //Users
  static const getUsersList = 'User/userList';
  static const getAllUsers = 'User/allUsers';
  static const getUserNotes = 'User/getNote/';
  static const getUserById = 'User/get/';
  static const getUserPermissions = 'User/list/permissions';
  static const getUserList = 'User/list';
  static const saveUser = 'User/saveUserBasicInfo';
  static const createNote = 'User/createNote/';
  static const userExportReport = 'User/export';
  static const copyUsers = 'User/copyUsers';
  static const importUsers = 'User/import';
  static const executeUserList = 'User/executeUserList';
  static const getImportUsersTemplate = 'User/getImportTemplate';
  static const usersStatus = 'User/status';
  static const updateThemeColor = 'User/updateThemeColor';
  static const inviteUser = 'User/inviteUser/';
  static const deleteSpecificUser = 'User/delete/';
  static const deleteAllUsers = 'User/deleteUsers';

  //drive api - file
  static const getDrive = 'File/getDrive';
  static const getStarred = 'File/getStarred';
  static const getTrash = 'File/getTrash';
  static const getArchive = 'File/getArchive';
  static const getByFolder = 'File/get-by-folder';
  static const isBusinessDataFoundDrive = 'File/isBusinessDataFound';
  static const createFolder = 'File/folder/create';
  static const renameFolder = 'File/folder/rename';
  static const deleteFolder = 'File/folder/folderDelete/';
  static const uploadFile = 'File/upload';
  static const downloadFile = 'File/download';
  static const folderDownload = 'File/folderDownload';
  static const uploadFolder = 'File/uploadFolder';
  static const dragAndDropFiles = 'File/dragAndDropFiles';
  static const moveFolder = 'File/folder/move';
  static const copyFolder = 'File/folder/copy';
  static const fileDelete = 'File/fileDelete';
  static const addToStarred = 'File/addToStarred';
  static const removeFromStarred = 'File/removeFromStarred';
  static const recentFile = 'File/recent';
  static const restoreTrash = 'File/restoreTrash';
  static const addToArchive = 'File/addToArchive';
  static const addToUnarchive = 'File/addToUnArchive';
  static const getInfo = 'File/getInfo/';
  static const searchFileOrFolder = 'File/searchFileOrFolder';
  static const uploadFolderOrFile = 'File/folder/upload';
  static const deletePermanently = 'File/deletePermanently';
  static const emptyTrash = 'File/emptyTrash';
  static const emptyArchive = 'File/emptyArchive';
  static const multipleDeleteFolders = 'File/multipleDeleteFolders';
  static const multipleArchiveFolders = 'File/multipleArchiveFolders';
  static const multipleUnArchiveFolders = 'File/multipleUnArchiveFolders';
  static const multipleStarredFolders = 'File/multipleStarredFolders';
  static const multipleUnStarredFolders = 'File/multipleUnStarredFolders';
  static const multipleRestoreFolders = 'File/multipleRestoreFolders';
  static const multiplePermanentDeleteFolders =
      'File/multiplePermanentDeleteFolders';
  static const multiplefoldermove = 'File/multiplefoldermove';
  static const multiplefoldercopy = 'File/multiplefoldercopy';
  static const foldershare = 'File/folder/share';
  static const multipleFileShare = 'File/multipleFileShare';
  static const exportDrive = 'File/exportDrive';
  static const exportStarred = 'File/exportStarred';
  static const exportArchived = 'File/exportArchived';
  static const exportTrash = 'File/exportTrash';
  static const sampleDataDrive = 'File/sampleData/';

  //BankFeeds
  static const GetAllBankDashboard = 'Dashboard/GetAllBankDashboard';
  static const GetAllBankDashboardTransactions =
      'Dashboard/GetAllBankDashboardTransactions';
  static const TrueLayerreAuthenticate = 'TrueLayer/reAuthenticate/';
  static const TrueLayerprepareUrl = 'TrueLayer/prepareUrl';
  static const TrueLayersucessRequest = 'TrueLayer/sucessRequest';
  static const TrueLayergetBankAccounts = 'TrueLayer/getBankAccounts';
  static const TrueLayercancelRequest = 'TrueLayer/cancelRequest';
  static const searchTransaction = 'TrueLayerApi/searchTransaction';
  static const saveTransactionNote = 'TrueLayerApi/saveTransactionNote';
  static const transactionNotes = 'TrueLayerApi/transactionNotes';
  static const GetAllBankAccount = 'TrueLayerApi/GetAllBankAccount';
  static const TrueLayerApigetTransaction = 'TrueLayerApi/getTransaction/';
  static const GetAllAccountTransation = 'TrueLayerApi/GetAllAccountTransation';
  static const TrueLayerApisampleData = 'TrueLayerApi/sampleData/';
  static const TrueLayerApiUpdateBank = 'TrueLayerApi/UpdateBank';
  static const TrueLayerApiCreateBankAccount = 'TrueLayerApi/CreateBankAccount';
  static const TrueLayerApirefreshAccountTransation =
      'TrueLayerApi/refreshAccountTransation/';
  static const TrueLayerApiexportBankTransaction =
      'TrueLayerApi/exportBankTransaction';
  static const TrueLayerApiUpdateIsLinked = 'TrueLayerApi/UpdateIsLinked';
  static const TrueLayerApiDeleteBank = 'TrueLayerApi/DeleteBank/';
  static const TrueLayerApiGetTrueLayerCancelRequest =
      'TrueLayerApi/GetTrueLayerCancelRequest';
  static const WeatherForecast = 'WeatherForecast';

  //registration
  static const registration = 'api/registration';
  static const sendVerificationCode = 'api/registration/SendVerificationCode';
  static const validateVerificationCode =
      'api/registration/ValidateVerificationCode';
  static const updateContactDetails = 'api/registration/UpdateContactDetails';
  static const updateCompanyDetails = 'api/registration/UpdateCompanyDetails';
  static const refreshToken = 'api/registration/RefreshToken';

  static const String TOKEN = 'token';
  static const String USERID = 'userId';
  static const String refreshTokenKey = 'refreshToken';
}
