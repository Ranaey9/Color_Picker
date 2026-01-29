
import 'package:color_picker/pages/color_picker_page.dart';
import 'package:color_picker/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const ColorsPickerPage(),
    );
  }
}

