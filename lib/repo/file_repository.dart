import 'dart:io';

import 'package:dio/dio.dart';
import 'package:diy_boox/core/network/dio/dio_client.dart';
import 'package:image_picker/image_picker.dart';

import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class FileRepository {
  final DioClient dioClient;

  FileRepository({required this.dioClient});

  Future<ApiResponse> uploadFile() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.upload,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> downloadFile() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.download,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multiFileUpload(File file, String userID) async {
    try {
      // upload multiple files with "files" keyword
      Response response = await dioClient.post(
          AppConstants.baseUrl + AppConstants.multiFileuploadFiles,
          data: FormData.fromMap({
            "files": await MultipartFile.fromFile(
              file.path,
              filename: file.path.split('/').last,
            ),
            "userId": userID,
            "attachmentType": 3
          }));
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multiFileDownload() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.multiFiledownload,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
