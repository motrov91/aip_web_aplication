import 'package:flutter/material.dart';

class BackgroundLogin extends StatelessWidget {
  const BackgroundLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            decoration: buildBoxDecoration(),
          ),
          Container(
            color: const Color(0xFF134B17).withOpacity(0.6),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Impulsando',
                    style: custoTextStyle(),
                  ),
                  Text(
                    'la agricultura',
                    style: custoTextStyle(),
                  ),
                  Text(
                    'Colombiana',
                    style: custoTextStyle(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(5),
            color: Colors.green[800],
            height: 70,
            width: 180,
            child: Row(
              children: [
                const Image(
                  image: AssetImage('logo-aip.png'),
                  width: 60,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fundacion AIP',
                      style: txtCloudService(),
                    ),
                    Text(
                      'Cloud Service',
                      style: txtCloudService(),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  TextStyle txtCloudService() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle custoTextStyle() {
    return TextStyle(
      color: Colors.white.withOpacity(0.3),
      fontSize: 90,
      fontWeight: FontWeight.bold,
    );
  }

  BoxDecoration buildBoxDecoration() {
    return const BoxDecoration(
        image: DecorationImage(
      image: AssetImage('bg_login.jpg'),
      fit: BoxFit.cover,
    ));
  }
}
