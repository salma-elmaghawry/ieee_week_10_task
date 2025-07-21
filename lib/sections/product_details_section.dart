import 'package:flutter/material.dart';
import 'package:week_10/sections/add_to_cart_button.dart';
import 'package:week_10/sections/product_details.dart';

class ProductDetailsSection extends StatelessWidget {
  final int quantity;

  const ProductDetailsSection({super.key, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const ProductDetails(), AddToCartButton(quantity: quantity)],
      ),
    );
  }
}
