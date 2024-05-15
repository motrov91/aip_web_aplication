import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String aipUrl = dotenv.env['API_URL'] ?? 'No hay un api key';
}
