import 'package:dio/dio.dart';

extension networkEx on Response {
  bool isStatusCode(int code) => statusCode == code;
}
