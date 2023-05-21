import 'dart:io';

import 'package:flutter/material.dart';

class ImagePickerWidget extends StatelessWidget {
  final VoidCallback onTap;
  final File? imageFile;
  final VoidCallback clearImage;

  const ImagePickerWidget({
    super.key,
    required this.onTap,
    this.imageFile,
    required this.clearImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: imageFile == null
          ? const Text(
              'Прикріпити файл',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )
          : _InputImage(
              imageFile: imageFile,
              clearImage: clearImage,
            ),
    );
  }
}

class _InputImage extends StatelessWidget {
  final File? imageFile;
  final VoidCallback clearImage;

  const _InputImage({
    required this.imageFile,
    required this.clearImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Вкладене зображення',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.file(
              imageFile as File,
              fit: BoxFit.contain,
              width: 200,
              height: 200,
            ),
            IconButton(
                onPressed: clearImage,
                icon: Icon(
                  Icons.close,
                  size: 26,
                ))
          ],
        ),
      ],
    );
  }
}
