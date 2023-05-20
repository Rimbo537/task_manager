import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/main/components/app_bar/category_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CategoryButton(
          onPressed: () {},
          text: 'Усі',
          isActive: true,
        ),
        CategoryButton(
          onPressed: () {},
          text: 'Робочі',
          isActive: false,
        ),
        CategoryButton(
          onPressed: () {},
          text: 'Особисті',
          isActive: false,
        ),
      ],
    );
  }
}
