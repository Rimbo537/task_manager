import 'package:flutter/material.dart';
import 'package:task_manager/sources/app_colors.dart';

class TypeOfTaskWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isSelected;

  const TypeOfTaskWidget({
    super.key,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: AppColors.primary,
            child: Visibility(
              visible: isSelected,
              child: const CircleAvatar(
                radius: 7,
                backgroundColor: AppColors.primaryVariant,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.secondaryVariant),
          ),
        ),
      ],
    );
  }
}
