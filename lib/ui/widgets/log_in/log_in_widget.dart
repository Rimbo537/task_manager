import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/components/custom_button.dart';

class LogInWidget extends StatelessWidget {
  const LogInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        text: 'Вхід',
        onPressed: () {},
      ),
    );
  }
}
