import 'dart:io';
import 'package:flutter/material.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;
    final Color filterColor;

  const DisplayPictureScreen({super.key, required this.imagePath, required this.filterColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result- 2241720041')),
      body: Center(
        child: Image.file(
          File(imagePath),
          color: filterColor.withOpacity(0.5),
          colorBlendMode: BlendMode.color,
        ),
      ),
    );
  }
}
