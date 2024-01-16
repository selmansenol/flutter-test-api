import 'package:flutter/material.dart';
import 'package:flutter_api/models/service_model.dart';
import 'package:flutter_api/service/user_service/user_service.dart';

///TODO: service ile birleştirilmeli
class UserViewModel with ChangeNotifier {
  ServiceModel? _user;
  ServiceModel? get user => _user;
  
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> getUser(
      {required String username, required String password}) async {
    _user = await UserService.getUser(username: username, password: password);
    _isLoading = false;
    notifyListeners();
  }
  void changeLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
