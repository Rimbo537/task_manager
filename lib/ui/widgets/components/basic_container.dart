import 'package:flutter/material.dart';
import 'package:task_manager/sources/app_colors.dart';

class BasicContainer extends StatelessWidget {
  final Widget child;
  final double? height;

  const BasicContainer({
    super.key,
    required this.child,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: height,
        width: double.infinity,
        color: AppColors.disabled,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 14),
          child: child,
        ),
      ),
    );
  }
}
