import 'package:flutter/material.dart';

import '../../../buttons/link_text.dart';

class LinksBar extends StatelessWidget {
  const LinksBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFFFAFAFA),
        child: Wrap(
          alignment: WrapAlignment.end,
          children: [
            LinkText(text: 'Acerca', onPress: () {}),
            LinkText(text: 'Terminos de servicio', onPress: () {}),
            LinkText(text: 'Políticas de privacidad', onPress: () {}),
            LinkText(text: 'Políticas de tratamiento de datos', onPress: () {}),
            LinkText(text: 'Eliminación de cuentas', onPress: () {}),
          ],
        ));
  }
}
