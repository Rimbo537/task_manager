import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/log_in/log_in.dart';
import 'package:task_manager/ui/screens/main/main.dart';
import 'package:task_manager/ui/widgets/components/bg_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BackgroundWidget(
        child: MainScreen(),
        // LogInScreen(),
      ),
    );
  }
}
