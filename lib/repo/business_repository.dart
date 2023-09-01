import 'package:dio/dio.dart';

import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class BusinessRepository {
  final Dio dioClient;

  BusinessRepository({required this.dioClient});

  Future<ApiResponse> businessGet() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.businessGet,
      );
      if (response.statusCode == 200) {
        return ApiResponse.withSuccess(response);
      } else {
        return ApiResponse.withError(response);
      }
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getBusinessByTenantId() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getBusinessByTenantId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getTitle() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getTitle,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getBusinessInvoice() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getBusinessInvoice,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getBusinessEstimate() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getBusinessEstimate,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getEmailTemplate() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getEmailTemplate,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getContrieList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getCountrieList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getCompany() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getCompany,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getCurrencyList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getCurrencyList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getActivityLog() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getActivityLog,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getReminderType() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getReminderType,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> isBusinessDataFound() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.isBusinessDataFound,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getBusinessFeesSetting() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getBusinessFeesSetting,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getBusinessFeesSettingByModuleId() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getBusinessFeesSettingByModuleId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getImportList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getImportList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getBusinessTax() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getBusinessTax,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getBusinessPaymentDetails() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getBusinessPaymentDetails,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> sampleData({required String isAdd}) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.sampleData + isAdd,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> createBasicInfo() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.createBasicInfo,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> saveEmailTemplates() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.saveEmailTemplates,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> savePaymentDetails() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.savePaymentDetails,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updatePreferences() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updatePreferences,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateBasicInfo(Object body, String? logo) async {
    try {
      Response response = await dioClient
          .put(AppConstants.baseUrl + AppConstants.updateBasicInfo, data: body);
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateInvoiceInfo(Object body) async {
    try {
      Response response = await dioClient.put(
          AppConstants.baseUrl + AppConstants.updateInvoiceInfo,
          data: body);
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateEstimateInfo(Object body) async {
    try {
      Response response = await dioClient.put(
          AppConstants.baseUrl + AppConstants.updateEstimateInfo,
          data: body);
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateSignature() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updateSignature,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateEmailConfig({required String IsFromCapium}) async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updateEmailConfig + IsFromCapium,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> saveBusinessFreeSetting() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.saveBusinessFreeSetting,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> saveBusinessFeesSettingByModuleId(
      {required String moduleId, required String entityId}) async {
    try {
      Response response = await dioClient.put(
        '${AppConstants.baseUrl}${AppConstants.saveBusinessFeesSettingByModuleId}$moduleId/$entityId',
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
