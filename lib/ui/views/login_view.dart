import 'package:aip_web_aplicacation/providers/auth_provider.dart';
import 'package:aip_web_aplicacation/providers/login_form_provider.dart';
import 'package:aip_web_aplicacation/router/router.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../inputs/custom_inputs.dart';
import 'widgets/logo_label_widger.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return ChangeNotifierProvider(
        create: (_) => LoginFormProvider(),
        child: Builder(
          builder: (context) {
            final loginProvider = Provider.of<LoginFormProvider>(context);

            return Container(
              color: const Color(0xFFFAFAFA),
              child: Center(
                  child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(3, 7), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.green.withOpacity(0.1),
                    width: 2,
                  ),
                ),
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxWidth: 370, maxHeight: 360),
                  child: Form(
                    key: loginProvider.formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const LogoLabel(),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Iniciar Sesión',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.green[800]),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          onFieldSubmitted: (value) => onFormSubmit(
                              context, loginProvider, authProvider),
                          validator: (value) {
                            if (!EmailValidator.validate(value ?? '')) {
                              return 'Email no valido';
                            }
                            return null;
                          },
                          onChanged: (value) => loginProvider.email = value,
                          style: const TextStyle(color: Colors.black54),
                          decoration: CustomsInputs.inputDecorationLogin(
                              hint: 'Correo electrónico',
                              label: 'Email',
                              icon: Icons.email_outlined),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Ingrese su contraseña';
                            }
                            return null;
                          },
                          obscureText: loginProvider.visibilityPassword,
                          onFieldSubmitted: (value) => onFormSubmit(
                              context, loginProvider, authProvider),
                          onChanged: (value) => loginProvider.password = value,
                          style: const TextStyle(color: Colors.black54),
                          decoration: CustomsInputs.inputDecorationPassword(
                              hint: '*********',
                              label: 'Contraseña',
                              icon: Icons.lock_outline,
                              state: (loginProvider.visibilityPassword)
                                  ? true
                                  : false,
                              onPressed: () {
                                loginProvider.setVisibilityPassword();
                              }),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: 150,
                            child: FilledButton.icon(
                                onPressed: () {
                                  onFormSubmit(
                                      context, loginProvider, authProvider);

                                  if (authProvider.isLoading == false) return;

                                  if (authProvider.authStatus ==
                                      AuthStatus.authenticated) {
                                    Navigator.pushNamed(
                                        context, Flurorouter.selectedProject);
                                  }
                                },
                                icon: authProvider.isLoading == false
                                    ? const Icon(Icons.chevron_right)
                                    : const SizedBox(),
                                label: authProvider.isLoading == false
                                    ? const Text('Ingresar')
                                    : const SizedBox(
                                        width: 10,
                                        height: 10,
                                        child: CircularProgressIndicator(
                                          strokeAlign: 2,
                                          color: Colors.white,
                                        ),
                                      )),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              )),
            );
          },
        ));
  }
}

void onFormSubmit(BuildContext context, LoginFormProvider providerLogin,
    AuthProvider authProvider) async {
  final isValid = providerLogin.validateForm();
  if (isValid) {
    await authProvider.login(providerLogin.email, providerLogin.password);
  }
}
