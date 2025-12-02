import 'package:flutter/material.dart';
import '../buttons/login_button.dart';
import '../fields/login_field.dart';
import '../theme/app_colors.dart';
import '../buttons/social_login_buttons.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.backgroundDark, AppColors.backgroundLight],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LoginField(
                    label: 'Nombre Completo',
                    hint: 'Tu nombre',
                    controller: _nameController,
                  ),
                  const SizedBox(height: 20),
                  LoginField(
                    label: 'Correo electrónico',
                    hint: 'tu@email.com',
                    controller: _emailController,
                  ),
                  const SizedBox(height: 20),
                  LoginField(
                    label: 'Contraseña',
                    hint: 'Mínimo 8 caracteres',
                    obscure: true,
                    controller: _passwordController,
                  ),
                  const SizedBox(height: 20),
                  LoginField(
                    label: 'Confirmar contraseña',
                    hint: 'Repite tu contraseña',
                    obscure: true,
                    controller: _confirmPasswordController,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: const Text('¿Olvidaste tu contraseña?'),
                  ),
                  const SizedBox(height: 20),
                  LoginButton(
                    text: 'Crear cuenta',
                    onPressed: () async {},
                    color: Color(0xFF8B5CF6),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'O registrate con',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  SocialLoginButtons(
                    isGoogleLoading: false,
                    onGooglePressed: () async {},
                    isFacebookLoading: false,
                    onFacebookPressed: () async {},
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: const Text('¿Ya tienes una cuenta? Inicia sesión'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
