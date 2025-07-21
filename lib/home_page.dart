import 'package:flutter/material.dart';
import 'package:week_10/sections/product_details_section.dart';
import 'package:week_10/sections/product_image.dart';
import 'package:week_10/sections/product_info.dart';
import 'package:week_10/sections/rating_and_quantity.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedSize = 'M';
  int quantity = 1;
  bool isFavorite = false;

  void _updateSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductImageSection(
                    selectedSize: selectedSize,
                    onSizeChanged: _updateSize,
                  ),
                  const SizedBox(height: 30),
                  const ProductInfoSection(),
                  const SizedBox(height: 20),
                  RatingAndQuantitySection(
                    quantity: quantity,
                    onIncrement: _incrementQuantity,
                    onDecrement: _decrementQuantity,
                  ),
                  const SizedBox(height: 30),
                  ProductDetailsSection(quantity: quantity),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).maybePop(),
      ),
      actions: [
        IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : Colors.white,
          ),
          onPressed: _toggleFavorite,
        ),
        IconButton(
          icon: const Icon(Icons.share, color: Colors.white),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Share functionality')),
            );
          },
        ),
      ],
    );
  }
}
