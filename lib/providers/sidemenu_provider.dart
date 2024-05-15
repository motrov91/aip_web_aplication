import 'package:flutter/material.dart';

class SideMenuProvider {
  static late AnimationController menuController;
  static bool isOpen = false;

  static Animation<double> movement = Tween<double>(begin: -250, end: 0)
      .animate(
          CurvedAnimation(parent: menuController, curve: Curves.easeInOut));

  static Animation<double> opacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: menuController, curve: Curves.easeInOut));

  static void openMenu() {
    isOpen = !isOpen;

    if (isOpen) {
      menuController.forward();
    } else {
      menuController.reverse();
    }
  }
}
