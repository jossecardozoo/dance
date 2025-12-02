import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  final String text;
  final Future<void> Function() onPressed;
  final Color? color;
  final Widget? icon;

  const LoginButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.icon,
  });
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.color ?? Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        textStyle: const TextStyle(color: Colors.white),
      ),

      onPressed: isLoading
          ? null
          : () async {
              setState(() => isLoading = true);
              await widget.onPressed();
              setState(() => isLoading = false);
            },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (widget.icon != null) ...[widget.icon!, const SizedBox(width: 10)],
          Text(widget.text),
        ],
      ),
    );
  }
}
