import 'package:flutter/material.dart';

class CustomsInputs {
  static InputDecoration inputDecorationLogin(
      {required String hint, required String label, required IconData icon}) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.7)),
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.7))),
      hintText: hint,
      labelText: label,
      prefixIcon: Icon(icon, color: Colors.grey.withOpacity(0.7)),
      labelStyle: TextStyle(color: Colors.grey.withOpacity(0.7)),
      hintStyle: TextStyle(color: Colors.grey.withOpacity(0.3)),
    );
  }

  static InputDecoration inputDecorationPassword(
      {required String hint,
      required String label,
      required IconData icon,
      required bool state,
      required Function onPressed}) {
    return InputDecoration(
      suffixIcon: IconButton(
        onPressed: () => onPressed(),
        icon: Icon(
          state ? Icons.visibility_off_outlined : Icons.visibility_outlined,
          size: 20,
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.7)),
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.7))),
      hintText: hint,
      labelText: label,
      prefixIcon: Icon(icon, color: Colors.grey.withOpacity(0.7)),
      labelStyle: TextStyle(color: Colors.grey.withOpacity(0.7)),
      hintStyle: TextStyle(color: Colors.grey.withOpacity(0.3)),
    );
  }

  static InputDecoration inputDecorationRegister(
      {required String hint, required String label, required IconData icon}) {
    return InputDecoration(
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30)),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: hint,
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.white),
        labelStyle: const TextStyle(color: Colors.white),
        hintStyle: const TextStyle(color: Colors.white),
        focusColor: Colors.white,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30)));
  }

  //Search input
  static InputDecoration searchInput(
      {required String hint, required IconData icon}) {
    return InputDecoration(
      border: InputBorder.none,
      enabledBorder: InputBorder.none,
      hintText: hint,
      prefixIcon: Icon(
        icon,
        color: Colors.grey,
      ),
      labelStyle: const TextStyle(color: Colors.grey),
      hintStyle: const TextStyle(color: Colors.grey),
    );
  }

  static InputDecoration updateInput(
      {String? hint, String? labelText, Color? color}) {
    return InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: color),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color!, width: 2.0)),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: color, width: 1)),
        disabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: color)));
  }

  static InputDecoration featureUpdateInput({String? labelText}) {
    return InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.orange),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange, width: 2.0)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.circular(15)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange, width: 1)));
  }

  static InputDecoration advantageUpdateInput({String? labelText}) {
    return InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.green),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2.0)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(15)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 1)));
  }
}
