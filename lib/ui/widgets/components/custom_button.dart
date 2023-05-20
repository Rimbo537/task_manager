import 'package:flutter/material.dart';
import 'package:task_manager/sources/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Color? bgColor;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final VoidCallback onPressed;
  final double? borderRadius;

  const CustomButton({
    super.key,
    this.text,
    this.bgColor,
    this.padding,
    this.child,
    this.borderRadius,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 15),
          ),
          backgroundColor: bgColor ?? AppColors.primaryVariant,
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
      onPressed: onPressed,
      child: child ??
          Text(
            text!,
            style: const TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
          ),
    );
  }
}
