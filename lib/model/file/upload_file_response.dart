class UploadFileResponseResponse {
  bool isSuccess;
  String fileUrl;
  String fileName;
  String? fileSize;

  UploadFileResponseResponse({
    required this.isSuccess,
    required this.fileUrl,
    required this.fileName,
    this.fileSize,
  });

  factory UploadFileResponseResponse.fromJson(Map<String, dynamic> json) =>
      UploadFileResponseResponse(
        isSuccess: json["isSuccess"],
        fileUrl: json["fileUrl"],
        fileName: json["fileName"],
        fileSize: json["fileSize"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "fileUrl": fileUrl,
        "fileName": fileName,
        "fileSize": fileSize,
      };
}
