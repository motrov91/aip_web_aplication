import 'package:aip_web_aplicacation/models/http/projectByUser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';

// ignore: must_be_immutable
class CustomDropdownFormField extends StatelessWidget {
  int? projectSelected;

  CustomDropdownFormField({super.key});

  // void uploadProjectSelected(FarmsProjectProvider farmService) async {
  //   await farmService.saveSelectedProject();
  // }

  @override
  Widget build(BuildContext context) {
    final List<ProjectsByUser> _projectsList;

    _projectsList =
        Provider.of<AuthProvider>(context, listen: false).projectsList;

    final authService = Provider.of<AuthProvider>(context, listen: false);

    // final farmService = Provider.of<FarmsProjectProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: DropdownButtonFormField(
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              hintText: 'Seleccione',
              hintStyle:
                  TextStyle(color: Theme.of(context).colorScheme.primary),
              border:
                  const OutlineInputBorder(borderSide: BorderSide(width: 1))),
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
          value: projectSelected,
          items: _projectsList.map((project) {
            return DropdownMenuItem(
                value: project.projectId,
                child: Center(
                  child: Text(project.projectNom),
                ));
          }).toList(),
          onChanged: (value) {
            authService.setProject = value!;
            // farmService.setProjectId = projectSelected!;

            // uploadProjectSelected(farmService);
          }),
    );
  }
}
