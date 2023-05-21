import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/main/main.dart';
import 'package:task_manager/ui/widgets/components/custom_button.dart';

class LogInWidget extends StatelessWidget {
  const LogInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        text: 'Вхід',
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const MainScreen()),
              (Route<dynamic> route) => false);
        },
      ),
    );
  }
}
