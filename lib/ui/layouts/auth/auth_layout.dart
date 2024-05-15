import 'package:aip_web_aplicacation/ui/layouts/auth/widgets/background_login.dart';
import 'package:aip_web_aplicacation/ui/layouts/auth/widgets/links_bar.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;

  const AuthLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        //Desktop
        _DesktopBody(child: child),
      ],
    ));
  }
}

class _DesktopBody extends StatelessWidget {
  final Widget child;

  const _DesktopBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: const Color(0xFFFAFAFA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                //background
                const BackgroundLogin(),
                //View container
                Expanded(
                  child: Container(
                    width: 700,
                    height: double.infinity,
                    color: Colors.blue,
                    child: child,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: const Color(0xFFFAFAFA),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const LinksBar(),
          )
        ],
      ),
    );
  }
}
