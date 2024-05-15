import 'package:aip_web_aplicacation/providers/auth_provider.dart';
import 'package:aip_web_aplicacation/router/router.dart';
import 'package:aip_web_aplicacation/services/local_storage.dart';
import 'package:aip_web_aplicacation/services/navigation_service.dart';
import 'package:aip_web_aplicacation/ui/layouts/auth/auth_layout.dart';
import 'package:aip_web_aplicacation/ui/layouts/dashboard/dashboard_layout.dart';
import 'package:aip_web_aplicacation/ui/layouts/splash/splash_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

import 'services/notification_service.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await LocalStorage.configurePrefs();
  Flurorouter.configureRoutes();
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(lazy: false, create: ((_) => AuthProvider())),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AIP Cloud service',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1B5E20)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: NavigationService.navigatorKey,
      scaffoldMessengerKey: NotificationsService.messengerKey,
      builder: (_, child) {
        final authProvider = Provider.of<AuthProvider>(context);

        /* 
          Validamos el estado de la aplicacion, es decir si estamos logueados
          por medio de un token o no tenemos token, que seria que no tenemos 
          un inicio de sesion activo
        */
        if (authProvider.authStatus == AuthStatus.checking) {
          return const SplashLayout();
        }

        if (authProvider.authStatus == AuthStatus.authenticated) {
          return DashboardLayout(child: child!);
        } else {
          return AuthLayout(child: child!);
        }
      },
    );
  }
}
