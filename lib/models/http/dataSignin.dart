import 'package:aip_web_aplicacation/models/http/projectByUser.dart';

class DataSignin {
  final String token;
  final int id;
  final String username;
  final String name;
  final int nit;
  final String cellphone;
  final int rol;
  final List<ProjectsByUser> projectsByUser;

  DataSignin({
    required this.token,
    required this.id,
    required this.username,
    required this.name,
    required this.nit,
    required this.cellphone,
    required this.rol,
    required this.projectsByUser,
  });

  factory DataSignin.fromJson(Map<String, dynamic> json) => DataSignin(
        token: json["token"],
        id: json["id"],
        username: json["username"],
        name: json["name"],
        nit: json["nit"],
        cellphone: json["cellphone"],
        rol: json["rol"],
        projectsByUser: List<ProjectsByUser>.from(
            json["projectsByUser"].map((x) => ProjectsByUser.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "id": id,
        "username": username,
        "name": name,
        "nit": nit,
        "cellphone": cellphone,
        "rol": rol,
        "projectsByUser":
            List<dynamic>.from(projectsByUser.map((x) => x.toJson())),
      };
}
