import 'package:flutter/material.dart';
import 'package:task_manager/domain/models/data_model.dart';
import 'package:task_manager/sources/app_colors.dart';
import 'package:task_manager/ui/screens/edit/edit.dart';
import 'package:task_manager/ui/widgets/main/components/card/checkbox.dart';

class CardWidget extends StatefulWidget {
  final TaskModel model;

  const CardWidget({
    super.key,
    required this.model,
  });

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => EditScreen(
                  model: widget.model,
                )));
        print(widget.model.urgent);
      },
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: widget.model.urgent == 1
              ? AppColors.accentRed
              : AppColors.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                widget.model.type == 1
                    ? Icons.work_outline
                    : Icons.home_outlined,
                size: 16,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.model.name.isNotEmpty
                            ? widget.model.name
                            : 'Назва завдання',
                        style: TextStyle(fontSize: 16),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 3),
                      Text(
                        widget.model.finishDate ?? 'some data',
                        style: TextStyle(fontSize: 11),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
              CheckboxWidget(
                isSelected: widget.model.status == 1 ? isSelected : !isSelected,
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
