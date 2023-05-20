import 'package:flutter/material.dart';
import 'package:task_manager/sources/app_colors.dart';

class SelectedWidget extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const SelectedWidget({
    super.key,
    required this.isSelected,
    required this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 33,
      height: 33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
        color: isSelected
            ? AppColors.primaryVariant
            : AppColors.transparent,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: isSelected ? const Icon(Icons.check) : null,
      ),
    );
  }
}
