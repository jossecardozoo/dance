import 'package:flutter/material.dart';
import '../buttons/login_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButtons extends StatelessWidget {
  final bool isGoogleLoading;
  final bool isFacebookLoading;
  final Future<void> Function() onGooglePressed;
  final Future<void> Function() onFacebookPressed;

  const SocialLoginButtons({
    Key? key,
    required this.isGoogleLoading,
    required this.onGooglePressed,
    required this.isFacebookLoading,
    required this.onFacebookPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginButton(
          text: isGoogleLoading ? 'Conectando...' : 'Continuar con Google',
          onPressed: isGoogleLoading ? () async {} : onGooglePressed,
          color: Colors.white.withOpacity(0.12),
          icon: isGoogleLoading
              ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : SvgPicture.asset(
                  'assets/google_logo.svg',
                  width: 32,
                  height: 32,
                ),
        ),
        const SizedBox(height: 20),
        LoginButton(
          text: isFacebookLoading ? 'Conectando...' : 'Continuar con Facebook',
          onPressed: isFacebookLoading ? () async {} : onFacebookPressed,
          color: Colors.white.withOpacity(0.12),
          icon: isFacebookLoading
              ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Color(0xFF1877F2),
                  size: 30,
                ),
        ),
      ],
    );
  }
}
