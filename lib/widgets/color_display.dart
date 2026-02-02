import 'package:flutter/material.dart';

class ColorDisplay extends StatelessWidget {
  const ColorDisplay({
    super.key,
    required Color selectedColor,
    required this.isCircle,
  }) : _selectedColor = selectedColor;

  final Color _selectedColor;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size.width;
    debugPrint(deviceSize.toString());

    final containerSize = deviceSize * 0.8;
    debugPrint(containerSize.toString());

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500), 
      curve: Curves.easeInOut, 
      width: containerSize,
      height: containerSize,
      decoration: BoxDecoration(
          color: _selectedColor,
          borderRadius: BorderRadius.circular(isCircle ? containerSize / 2 : 10),
          boxShadow: [
            BoxShadow(
              color: _selectedColor.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 2,
            )
          ]),
    );
  }
}
