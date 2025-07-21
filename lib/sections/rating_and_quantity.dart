import 'package:flutter/material.dart';
import 'package:week_10/sections/quantity_selector_section.dart';
import 'package:week_10/sections/star_rating_section.dart';


class RatingAndQuantitySection extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const RatingAndQuantitySection({
    super.key,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: StarRating(),
        ),
        const Spacer(),
        QuantitySelector(
          quantity: quantity,
          onIncrement: onIncrement,
          onDecrement: onDecrement,
        ),
      ],
    );
  }
}
