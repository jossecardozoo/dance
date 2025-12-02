import 'package:flutter/material.dart';
import '../fields/login_field.dart';
import '../theme/app_colors.dart';
import '../buttons/login_button.dart';
import '../buttons/social_login_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginField(
                label: 'Correo electrónico',
                hint: 'tu@email.com',
                controller: _emailController,
              ),
              const SizedBox(height: 20),
              LoginField(
                label: 'Contraseña',
                hint: 'Ingresa tu contraseña',
                obscure: true,
                controller: _passwordController,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: const Text('¿Olvidaste tu contraseña?'),
              ),
              LoginButton(
                text: 'Iniciar Sesión',
                onPressed: () async {
                  String email = _emailController.text;
                  String password = _passwordController.text;
                  Navigator.pushReplacementNamed(context, '/home');
                },
                color: Color(0xFF8B5CF6),
              ),
              const SizedBox(height: 20),
              Text('O continuar con', style: TextStyle(color: Colors.white)),
              const SizedBox(height: 20),
              SocialLoginButtons(
                isGoogleLoading: false,
                onGooglePressed: () async {},
                isFacebookLoading: false,
                onFacebookPressed: () async {},
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: const Text('¿No tienes una cuenta? Regístrate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
