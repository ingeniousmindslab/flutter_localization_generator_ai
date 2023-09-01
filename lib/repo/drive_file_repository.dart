import 'package:dio/dio.dart';
import 'package:diy_boox/core/network/dio/dio_client.dart';

import '../core/utils/app_constants.dart';
import '../model/api_response.dart';

class DriveFileRepository {
  final DioClient dioClient;

  DriveFileRepository({required this.dioClient});

  Future<ApiResponse> getDrive() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getDrive,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getStarred() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getStarred,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getTrash() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.getTrash,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getArchive({required String search}) async {
    try {
      Response response = await dioClient
          .post(AppConstants.baseUrlDrive + AppConstants.getArchive, data: {
        "companyId": "8009693e-12b4-41fa-94d6-7f090cf3ba20",
        "startDate": "",
        "endDate": "",
        "sortBy": "createdOn",
        "sortOrder": true,
        "search": search,
        "dateFilter": 1,
        "parentId": "00000000-0000-0000-0000-000000000000",
        "pageNumber": 1,
        "pageSize": 20,
        "universalIds": [],
        "PageLoad": true
      });
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getByFolder() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getByFolder,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> isBusinessDataFoundDrive() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.isBusinessDataFoundDrive,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> createFolder() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.createFolder,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> renameFolder() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.renameFolder,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deleteFolder(String universalId) async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deleteFolder + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> uploadFile() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.uploadFile,
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
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.downloadFile,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> folderDownload() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.folderDownload,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> uploadFolder() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.uploadFolder,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> dragAndDropFiles() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.dragAndDropFiles,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> moveFolder() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.moveFolder,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> copyFolder() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.copyFolder,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> fileDelete() async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.fileDelete,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> addToStarred() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.addToStarred,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> removeFromStarred() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.removeFromStarred,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> recentFile() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.recentFile,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> restoreTrash() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.restoreTrash,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> addToArchive() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.addToArchive,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> addToUnarchive() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.addToUnarchive,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> getInfo(String universalId) async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.getInfo + universalId,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> searchFileOrFolder() async {
    try {
      Response response = await dioClient.get(
        AppConstants.baseUrl + AppConstants.searchFileOrFolder,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> uploadFolderOrFile() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.uploadFolderOrFile,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> deletePermanently() async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.deletePermanently,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> emptyTrash() async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrlDrive + AppConstants.emptyTrash,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> emptyArchive() async {
    try {
      Response response = await dioClient.delete(
        AppConstants.baseUrl + AppConstants.emptyArchive,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multipleDeleteFolders() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.multipleDeleteFolders,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multipleArchiveFolders() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.multipleArchiveFolders,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multipleUnArchiveFolders() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.multipleUnArchiveFolders,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multipleStarredFolders() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.multipleStarredFolders,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multipleUnStarredFolders() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.multipleUnStarredFolders,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multipleRestoreFolders() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.multipleRestoreFolders,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multiplePermanentDeleteFolders() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.multiplePermanentDeleteFolders,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multiplefoldermove() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.multiplefoldermove,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multiplefoldercopy() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.multiplefoldercopy,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> foldershare() async {
    try {
      Response response = await dioClient.put(
        AppConstants.baseUrl + AppConstants.foldershare,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> multipleFileShare() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.multipleFileShare,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportDrive() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportDrive,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportStarred() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportStarred,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportArchived() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportArchived,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> exportTrash() async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.exportTrash,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }

  Future<ApiResponse> sampleDataDrive(String isAdd) async {
    try {
      Response response = await dioClient.post(
        AppConstants.baseUrl + AppConstants.sampleDataDrive + isAdd,
      );
      return ApiResponse.withSuccess(response);
    } on DioError catch (e) {
      return ApiResponse.withError(e.response);
    } catch (e) {
      return ApiResponse.withError(e.toString());
    }
  }
}
