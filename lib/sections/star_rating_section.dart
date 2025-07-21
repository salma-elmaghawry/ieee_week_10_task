import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  const StarRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(5, (index) {
            return Icon(
              Icons.star,
              color: index < 4 ? Colors.red : Colors.grey,
              size: 20,
            );
          }),
        ),
        const SizedBox(width: 8),
        const Text('4.0', style: TextStyle(color: Colors.white, fontSize: 16)),
      ],
    );
  }
}