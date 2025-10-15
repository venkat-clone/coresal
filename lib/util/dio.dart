import 'package:dio/dio.dart';


class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;

  late Dio dio;
  DioClient._internal(){
    dio = Dio(
       BaseOptions(
         baseUrl: "https://fakestoreapi.com"
       )
    );

  }
}