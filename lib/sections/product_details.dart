import 'package:flutter/material.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Details',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Material: Polyester',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        SizedBox(height: 4),
        Text(
          'Shipping: in 5 to 6 Days',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        SizedBox(height: 4),
        Text(
          'Returns: Within 30 Days',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}