import 'package:aip_web_aplicacation/ui/views/no_page_found.dart';
import 'package:fluro/fluro.dart';

class NoPageFoundHandlers {
  static Handler noPageFound = Handler(
    handlerFunc: (context, parameters) {
      return NoPageFoundView();
    },
  );
}
