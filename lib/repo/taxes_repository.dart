import 'package:dio/dio.dart';

import '../core/network/dio/dio_client.dart';
import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class TaxesRepository {
  final DioClient dioClient;

  TaxesRepository({required this.dioClient});

  Future<ApiResponse> getTaxes() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getTaxes,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getTaxByUniversalId({required String universalId}) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getTaxByUniversalId + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getVatTaxes() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getVatTaxes,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getTaxesList() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getTaxesList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> executeTaxList() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.executeTaxList,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> createTaxes() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.createTaxes,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportTaxes() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportTaxes,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> copyTaxes() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.copyTaxes,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getImportTaxesTemplate() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getImportTaxesTemplate,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> importTaxes() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.importTaxes,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> updateTaxes() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.updateTaxes,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> taxDefaultStatus(
      {required String universalId, required String isDefault}) async {
    try {
      Response response = await dioClient.put(
        '${AppConstants.baseUrl}${AppConstants.taxDefaultStatus}$universalId/$isDefault',
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> archiveTaxes() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.archiveTaxes,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteTaxes({required String universalId}) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteTaxes + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteAllTaxes() async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteAllTaxes,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
