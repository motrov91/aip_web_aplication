import 'package:aip_web_aplicacation/router/admin_handlers.dart';
import 'package:aip_web_aplicacation/router/dashboard_handlers.dart';
import 'package:aip_web_aplicacation/router/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';

  //Auth router
  static String loginRouter = '/auth/login';
  static String selectedProject = '/auth/selectedProject';

  //Dashboard
  static String dashboardRouter = '/dashboard';

  static void configureRoutes() {
    //Auth routes
    router.define(rootRoute, handler: AdminHandlers.login);
    router.define(loginRouter, handler: AdminHandlers.login);
    router.define(selectedProject, handler: AdminHandlers.selectedProject);
    // router.define(loginRouter, handler: handler);

    //Dashboard
    router.define(dashboardRouter,
        handler: DashboardHandlers.dashboard,
        transitionType: TransitionType.fadeIn);

    //404
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
