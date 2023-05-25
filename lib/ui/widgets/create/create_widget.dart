import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_manager/domain/models/data_model.dart';
import 'package:task_manager/ui/widgets/components/basic_container.dart';
import 'package:task_manager/ui/widgets/components/custom_button.dart';
import 'package:task_manager/ui/widgets/components/custom_date_picker.dart';
import 'package:task_manager/ui/widgets/components/type_of_task.dart';
import 'package:task_manager/ui/widgets/create/components/custom_text_field.dart';
import 'package:task_manager/ui/widgets/create/components/image_picker.dart';
import 'package:task_manager/ui/widgets/create/components/task_picker.dart';

class CreateWidget extends StatefulWidget {
  final VoidCallback onPressed;
  final String textButton;
  final Color? colorButton;
  final TaskModel? model;

  const CreateWidget({
    super.key,
    required this.onPressed,
    required this.textButton,
    this.colorButton,
    this.model,
  });

  @override
  State<CreateWidget> createState() => _CreateWidgetState();
}

class _CreateWidgetState extends State<CreateWidget> {
  bool isSelected = false;

  File? imageFile;
  bool isClearImage = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController descriptionController =
        TextEditingController(text: widget.model?.description ?? '');

    return SingleChildScrollView(
      child: Column(
        children: [
          BasicContainer(
            child: TaskPicker(
              model: widget.model,
            ),
          ),
          BasicContainer(
            height: 100,
            child: CustomTextField(
              hintText: 'Додати опис...',
              fontSize: 18,
              maxLines: 3,
              controller: descriptionController,
            ),
          ),
          BasicContainer(
            child: ImagePickerWidget(
              onTap: () async {
                final pickedFile =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                if (pickedFile != null) {
                  setState(() {
                    imageFile = File(pickedFile.path);
                  });
                }
              },
              imageFile: imageFile,
              clearImage: () {
                setState(() {
                  imageFile = null;
                });
              },
            ),
          ),
          CustomDatePicker(
            date: '${widget.model?.finishDate}',
          ),
          BasicContainer(
            child: TypeOfTaskWidget(
              text: 'Термінове',
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              isSelected: widget.model?.urgent == 0 ? isSelected : !isSelected,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: CustomButton(
              onPressed: () {},
              text: widget.textButton,
              bgColor: widget.colorButton,
            ),
          )
        ],
      ),
    );
  }
}
