import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? bgColor;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.bgColor,
    this.padding,
    this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: bgColor ?? const Color(0xFFFFD600),
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
      onPressed: onPressed,
      child: child ??
          Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
          ),
    );
  }
}
