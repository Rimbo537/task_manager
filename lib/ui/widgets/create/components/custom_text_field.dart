import 'package:flutter/material.dart';
import 'package:task_manager/sources/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final double? fontSize;
  final int? maxLength;
  final int? maxLines;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.fontSize,
    this.maxLength,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColors.secondaryVariant),
        counterText: '',
        contentPadding: EdgeInsets.zero,
      ),
      cursorColor: AppColors.secondaryVariant,
      style: TextStyle(
        fontSize: fontSize ?? 18,
        fontWeight: FontWeight.w600,
        color: AppColors.secondaryVariant,
      ),
      maxLines: maxLines,
      maxLength: maxLength ?? TextField.noMaxLength,
    );
  }
}
