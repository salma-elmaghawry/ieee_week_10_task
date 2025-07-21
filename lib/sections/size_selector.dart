import 'package:flutter/material.dart';
import 'package:week_10/sections/size_button.dart';


class SizeSelector extends StatelessWidget {
  final String selectedSize;
  final Function(String) onSizeChanged;

  const SizeSelector({
    super.key,
    required this.selectedSize,
    required this.onSizeChanged,
  });

  @override
  Widget build(BuildContext context) {
    final sizes = ['S', 'L', 'M', 'XL', '2XL'];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:
            sizes
                .map(
                  (size) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SizeButton(
                      size: size,
                      isSelected: size == selectedSize,
                      onTap: () => onSizeChanged(size),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
