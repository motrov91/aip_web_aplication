import 'dart:convert';

import 'package:aip_web_aplicacation/models/http/projectByUser.dart';

import 'http/dataSignin.dart';

AuthResponse authResponseFromJson(String str) =>
    AuthResponse.fromJson(json.decode(str));

String authResponseToJson(AuthResponse data) => json.encode(data.toJson());

class AuthResponse {
  final DataSignin dataSignin;

  AuthResponse({
    required this.dataSignin,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
        dataSignin: DataSignin.fromJson(json["dataSignin"]),
      );

  Map<String, dynamic> toJson() => {
        "dataSignin": dataSignin.toJson(),
      };

  static DataSignin userJsonToEntity(Map<String, dynamic> json) => DataSignin(
      token: json['dataSignin']['token'],
      id: json['dataSignin']['id'],
      username: json['dataSignin']['username'],
      name: json['dataSignin']['name'],
      nit: json['dataSignin']['nit'],
      cellphone: json['dataSignin']['cellphone'],
      rol: json['dataSignin']['rol'],
      //projectByUser: ProjectByUser()
      projectsByUser: List<ProjectsByUser>.from(
          json['dataSignin']['projectsByUser'].map((item) => ProjectsByUser(
              idProjectHasUser: item['id_project_has_user'],
              projectId: item['project_id'],
              userId: item['user_id'],
              userNom: item['user_nom'],
              projectNom: item['project_nom']))));
}
