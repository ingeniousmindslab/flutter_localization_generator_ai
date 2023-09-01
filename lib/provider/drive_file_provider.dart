import 'package:diy_boox/model/drive_apis/file/get_archive_list_response.dart';
import 'package:diy_boox/repo/drive_file_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/dio/dio_client.dart';
import '../model/api_response.dart';

class DriveFileProvider extends ChangeNotifier {
  final DriveFileRepository repo;
  final SharedPreferences sharedPreferences;
  final DioClient dioClient;

  DriveFileProvider({
    required this.repo,
    required this.sharedPreferences,
    required this.dioClient,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<GetArchiveListResponse> archiveData = [];
  List<GetArchiveListResponse> get getArchiveData => archiveData;

  Future<void> getArchive({String search = ""}) async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.getArchive(search: search);
    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      archiveData = List<dynamic>.of(apiResponse.response!.data)
          .map((e) => GetArchiveListResponse.fromJson(e))
          .toList();
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> emptyTrash() async {
    _isLoading = true;

    ApiResponse apiResponse = await repo.emptyTrash();
    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      archiveData = [];
    }

    _isLoading = false;
    notifyListeners();
  }
}
