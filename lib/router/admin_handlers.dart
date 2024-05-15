import 'package:aip_web_aplicacation/ui/views/dashboard_view.dart';
import 'package:aip_web_aplicacation/ui/views/login_view.dart';
import 'package:aip_web_aplicacation/ui/views/selected_project.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';

class AdminHandlers {
  static Handler login = Handler(
    handlerFunc: (context, parameters) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.notAuthenticated &&
          authProvider.getProject == null) {
        return const LoginView();
      } else if (authProvider.authStatus == AuthStatus.validated &&
          authProvider.getProject == null) {
        return const SelectedProjectView();
      } else if (authProvider.authStatus == AuthStatus.authenticated) {
        return const DashboardView();
      } else if (authProvider.authStatus == AuthStatus.validated &&
          authProvider.getProject != null) {
        return const DashboardView();
      }

      return const LoginView();
    },
  );

  static Handler selectedProject = Handler(
    handlerFunc: (context, parameters) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.notAuthenticated &&
          authProvider.getProject == null) {
        return const LoginView();
      } else if (authProvider.authStatus == AuthStatus.validated &&
          authProvider.getProject == null) {
        return const SelectedProjectView();
      } else if (authProvider.authStatus == AuthStatus.authenticated) {
        return const DashboardView();
      } else if (authProvider.authStatus == AuthStatus.validated &&
          authProvider.getProject != null) {
        return const DashboardView();
      }

      return const LoginView();
    },
  );
}
