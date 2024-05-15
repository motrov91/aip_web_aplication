class ProjectsByUser {
  final int idProjectHasUser;
  final int projectId;
  final int userId;
  final String userNom;
  final String projectNom;

  ProjectsByUser({
    required this.idProjectHasUser,
    required this.projectId,
    required this.userId,
    required this.userNom,
    required this.projectNom,
  });

  factory ProjectsByUser.fromJson(Map<String, dynamic> json) => ProjectsByUser(
        idProjectHasUser: json["id_project_has_user"],
        projectId: json["project_id"],
        userId: json["user_id"],
        userNom: json["user_nom"],
        projectNom: json["project_nom"],
      );

  Map<String, dynamic> toJson() => {
        "id_project_has_user": idProjectHasUser,
        "project_id": projectId,
        "user_id": userId,
        "user_nom": userNom,
        "project_nom": projectNom,
      };
}
