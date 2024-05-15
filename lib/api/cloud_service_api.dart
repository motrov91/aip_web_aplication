// ignore: file_names

import 'package:aip_web_aplicacation/api/enviroment.dart';
import 'package:dio/dio.dart';

class DioConfig {
  static final Dio _dio = Dio(BaseOptions(
      baseUrl: Enviroment.aipUrl,
      contentType: 'application/json',
      headers: {
        //TODO: Configurar los headers para las peticiones
      }));

  //Peticiones get
  static Future httpGet(String path) async {
    try {
      final response = await _dio.get(path);
      return response;
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future httpPost(String path, Map<String, dynamic> data) async {
    try {
      final response = await _dio.post(path, data: data);
      return response;
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future httpPut(String path, Map<String, dynamic> data) async {}
  static Future httpDelete(String path, Map<String, dynamic> data) async {}
}
