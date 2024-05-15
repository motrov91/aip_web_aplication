import 'package:aip_web_aplicacation/providers/auth_provider.dart';
import 'package:aip_web_aplicacation/services/navigation_service.dart';
import 'package:aip_web_aplicacation/services/notification_service.dart';
import 'package:aip_web_aplicacation/ui/views/widgets/logo_label_widger.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/http/projectByUser.dart';
import '../../router/router.dart';

class SelectedProjectView extends StatelessWidget {
  const SelectedProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProjectsByUser> _projectsList;
    int? projectSelected;

    _projectsList =
        Provider.of<AuthProvider>(context, listen: false).projectsList;
    final authProvider = Provider.of<AuthProvider>(context);

    var inputDecoration = InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        hintText: 'Seleccione',
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        border: const OutlineInputBorder(borderSide: BorderSide(width: 1)));
    return Container(
      color: const Color(0xFFFAFAFA),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(3, 7), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.green.withOpacity(0.1),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 350, maxHeight: 300),
            child: Form(
              child: Column(
                children: [
                  const LogoLabel(),
                  const SizedBox(height: 20),
                  Text(
                    'Selección del proyecto',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.green[800]),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: DropdownButtonFormField(
                        decoration: inputDecoration,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                        value: projectSelected,
                        items: _projectsList.map((project) {
                          return DropdownMenuItem(
                              value: project.projectId,
                              child: Center(
                                child: Text(project.projectNom),
                              ));
                        }).toList(),
                        onChanged: (value) {
                          projectSelected = value;
                          // authService.setProject = value!;
                          // farmService.setProjectId = projectSelected!;

                          // uploadProjectSelected(farmService);
                        }),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 150,
                      child: FilledButton.icon(
                        /*
                          Si obtiene un proyecto se habilita el boton, en caso 
                          contrario aparece el boton deshabilitado
                        */
                        onPressed: () {
                          getFarmByProject(
                              context, authProvider, projectSelected);

                          if (authProvider.isLoading == true) return;

                          NavigationService.replaceTo(
                              Flurorouter.dashboardRouter);
                        },
                        icon: authProvider.isLoading == true
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 3,
                                  color: Colors.white,
                                ),
                              )
                            : const Icon(Icons.chevron_right),
                        label: authProvider.isLoading == true
                            ? const SizedBox()
                            : const Text('Siguiente'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void getFarmByProject(BuildContext context, AuthProvider authProvider,
    int? selectedProject) async {
  if (selectedProject == null) {
    NotificationsService.showSnackbarError(
        'Debes seleccionar un proyecto para avanzar');
  }

  //* Posiblemente falte el await
  await authProvider.getFarmsByProject(selectedProject!);
}
