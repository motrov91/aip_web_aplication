import 'package:aip_web_aplicacation/models/auth_response.dart';
import 'package:aip_web_aplicacation/models/http/farms.dart';
import 'package:aip_web_aplicacation/models/http/projectByUser.dart';
import 'package:aip_web_aplicacation/services/local_storage.dart';
import 'package:flutter/material.dart';

import '../api/cloud_service_api.dart';

enum AuthStatus { checking, validated, authenticated, notAuthenticated }

class AuthProvider extends ChangeNotifier {
  int? _project;
  bool isLoading = false;
  AuthStatus authStatus = AuthStatus.checking;
  List<ProjectsByUser> projectsList = [];
  List<Farm>? dataListFarms;

  AuthProvider() {
    isAuthenticated();
  }

  int? get getProject => _project;

  set setProject(int value) {
    _project = value;
    LocalStorage.prefs.setInt('projectId', value);
    notifyListeners();
  }

  Future<void> login(String email, String password) async {
    final data = {'username': email, 'password': password};

    try {
      isLoading = true;
      notifyListeners();

      final response = await DioConfig.httpPost('/signin', data);

      final responseData = AuthResponse.userJsonToEntity(response.data);

      LocalStorage.prefs.setString('token', responseData.token);

      projectsList = responseData.projectsByUser;

      authStatus = AuthStatus.validated;

      isLoading = false;
      notifyListeners();
    } catch (e) {
      print('e: $e');
    }

    // NavigationService.replaceTo(Flurorouter.selectedProject);
  }

  Future<bool> isAuthenticated() async {
    final token = LocalStorage.prefs.getString('token');

    // final projectId = LocalStorage.prefs.getString('projectId');

    // if (projectId != null) {
    //   _project = int.parse(projectId);
    // } else {
    //   _project = null;
    // }

    if (token == null) {
      authStatus = AuthStatus.notAuthenticated;
      notifyListeners();
      return false;
    }

    await Future.delayed(const Duration(milliseconds: 1000));
    authStatus = AuthStatus.authenticated;
    notifyListeners();

    return true;
  }

  Future<List> getFarmsByProject(int project) async {
    isLoading = true;
    notifyListeners();

    final response =
        await DioConfig.httpGet('/characterizationListByProject/$project');
    dataListFarms = await Farm.farmJsonToEntity(response.data);

    authStatus = AuthStatus.checking;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 3));

    authStatus = AuthStatus.authenticated;

    isLoading = false;
    notifyListeners();

    return Future.value(dataListFarms);
  }
}
