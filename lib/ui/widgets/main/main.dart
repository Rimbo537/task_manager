import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/main/components/card/card.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
          child: CardWidget(),
        );
      },
    );
  }
}
