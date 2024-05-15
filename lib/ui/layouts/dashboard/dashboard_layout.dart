import 'package:aip_web_aplicacation/providers/sidemenu_provider.dart';
import 'package:flutter/material.dart';

import '../../shared/sidebar.dart';

class DashboardLayout extends StatefulWidget {
  final Widget child;

  const DashboardLayout({super.key, required this.child});

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    SideMenuProvider.menuController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color(0xFFF0F2F0),
        body: Stack(
          children: [
            Expanded(
              child: widget.child,
            ),
            AnimatedBuilder(
              animation: SideMenuProvider.menuController,
              builder: (context, _) => Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.translate(
                        offset: Offset(SideMenuProvider.movement.value, 0),
                        child: const Sidebar(),
                      ),
                      Transform.translate(
                        offset: SideMenuProvider.isOpen
                            ? Offset(SideMenuProvider.movement.value, 0)
                            : Offset(SideMenuProvider.movement.value + 20, 0),
                        child: IconButton(
                            onPressed: () => SideMenuProvider.openMenu(),
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            icon: const Icon(Icons.menu)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
