import 'package:dio/dio.dart';
import 'package:flutter_api/models/service_model.dart';
import 'package:flutter_api/utilities/constants/api_constants.dart';

class UserService {
  static final String _baseUrl = ApiConstants.baseUrl;
  static Dio dio = Dio();

  static Future<ServiceModel?> getUser({
    required String username,
    required String password,
  }) async {
    FormData formData = FormData.fromMap({
      'token': ApiConstants.token,
      'action': 'login',
      'username': username,
      'password': password,
    });

    ServiceModel? userModel;

    try {
      Response response = await dio.post(
        _baseUrl,
        data: formData,
      );
      var data = await response.data;
      userModel = ServiceModel.fromJson(data);
    } catch (e) {
      print(e);
    }

    return userModel;
  }
}
