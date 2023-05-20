import 'package:flutter/material.dart';
import 'package:task_manager/sources/app_colors.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isActive;

  const CategoryButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: isActive ? 4 : 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            backgroundColor: isActive ? AppColors.disabled : AppColors.primary,
            padding: const EdgeInsets.symmetric(vertical: 14),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
