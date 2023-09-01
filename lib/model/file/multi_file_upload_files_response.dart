class MultipleFileUploadFileResponse {
  bool isSuccess;
  String fileUrl;
  String fileName;
  String fileSize;

  MultipleFileUploadFileResponse({
    required this.isSuccess,
    required this.fileUrl,
    required this.fileName,
    required this.fileSize,
  });

  factory MultipleFileUploadFileResponse.fromJson(Map<String, dynamic> json) => MultipleFileUploadFileResponse(
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