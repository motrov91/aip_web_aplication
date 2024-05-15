import 'package:aip_web_aplicacation/ui/shared/widgets/menu_item.dart';
import 'package:flutter/material.dart';

import 'package:aip_web_aplicacation/ui/views/widgets/logo_label_widger.dart';
import 'widgets/text_separator.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: double.infinity,
      padding: const EdgeInsets.only(top: 20),
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          const LogoLabel(colorText: Colors.white),
          const SizedBox(height: 50),
          const TextSeparator(text: 'Principal'),
          MenuItem(
              text: 'Info General',
              icon: Icons.bar_chart,
              onPressed: () => print('Info general')),
          MenuItem(
              text: 'Carácterización',
              icon: Icons.account_circle_outlined,
              onPressed: () {}),
          MenuItem(
              text: 'Reg. Agrícola',
              icon: Icons.agriculture_outlined,
              onPressed: () {}),
          MenuItem(
              text: 'Reg. Pecuario',
              icon: Icons.list_alt_outlined,
              onPressed: () {}),
          const SizedBox(height: 30),
          const TextSeparator(text: 'Configuraciones'),
          MenuItem(
              text: 'Crear usuarios',
              icon: Icons.person_2_outlined,
              onPressed: () {}),
          MenuItem(
              text: 'Crear proyectos',
              icon: Icons.all_inbox_rounded,
              onPressed: () {}),
          MenuItem(
              text: 'Cerrar Sesión',
              icon: Icons.exit_to_app_outlined,
              onPressed: () {}),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF389D35),
              Color(0xFF389D31),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
            )
          ]);
}
