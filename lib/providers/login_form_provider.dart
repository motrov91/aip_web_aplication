import 'package:flutter/material.dart';

class LoginFormProvider with ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  bool _obscurePassword = true;

  get visibilityPassword => _obscurePassword;

  void setVisibilityPassword() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }

  bool validateForm() {
    if (formKey.currentState!.validate()) {
      //* valida si los campos estan completos y retorna true si es asi.
      //* caso contrario retorna false.
      // print('$email ----- $password');
      // authProvider.login(email, password);
      return true;
    } else {
      // print('Form not valid');
      return false;
    }
  }
}
