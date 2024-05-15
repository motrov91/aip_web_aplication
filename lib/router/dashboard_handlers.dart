import 'package:aip_web_aplicacation/ui/views/dashboard_view.dart';
import 'package:fluro/fluro.dart';

class DashboardHandlers {
  static Handler dashboard = Handler(
    handlerFunc: (context, parameters) {
      return const DashboardView();
    },
  );
}
