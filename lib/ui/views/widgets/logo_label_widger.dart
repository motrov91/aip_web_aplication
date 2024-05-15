import 'package:flutter/material.dart';

class LogoLabel extends StatelessWidget {
  final Color? colorText;

  const LogoLabel({
    super.key,
    this.colorText = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage('logo-aip.png'),
          width: 60,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fundación AIP',
              style: _txtStyle(),
            ),
            Text(
              'Cloud Service',
              style: _txtStyle(),
            ),
          ],
        )
      ],
    );
  }

  TextStyle _txtStyle() =>
      TextStyle(fontWeight: FontWeight.w500, color: colorText);
}
