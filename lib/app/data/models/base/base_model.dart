class BaseModel {
  BaseModel({
    this.message = '',
    this.data,
    this.statusCode,
  });

  String message;
  dynamic data;
  int? statusCode;
}