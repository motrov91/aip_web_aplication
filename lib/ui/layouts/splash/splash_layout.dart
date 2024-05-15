import 'package:flutter/material.dart';

class SplashLayout extends StatelessWidget {
  const SplashLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              strokeWidth: 3,
            ),
            SizedBox(
              height: 20,
            ),
            Text('Verificando...')
          ],
        ),
      ),
    );
  }
}
