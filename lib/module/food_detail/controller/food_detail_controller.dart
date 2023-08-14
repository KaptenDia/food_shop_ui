import 'package:flutter/material.dart';
import 'package:food_shop_ui/core.dart';
import 'package:provider/provider.dart';

class FoodDetailController extends State<FoodDetailView> {
  static late FoodDetailController instance;
  late FoodDetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // Quantity
  int quantityCount = 0;

  VoidCallback get decrementQuantity => _decrementQuantity;
  VoidCallback get incrementQuantity => _incrementQuantity;
  VoidCallback get addToCart => _addToCart;

  // Decrement quantity
  void _decrementQuantity() {
    setState(() {
      quantityCount--;
    });
  }

  // Increment quantity
  void _incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  // Add to cart
  void _addToCart() {
    // Only add to cart if there something in the cart
    if (quantityCount > 0) {
      // Get access to shop
      final shop = context.read<HomeController>();
      // Add to cart
      shop.addToCart(widget.food, quantityCount);
      // let the user know it was successful
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: primaryColor,
          content: const Text(
            "Successfully added to cart",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          actions: [
            // Okay button
            IconButton(
              onPressed: () {
                // Pop once to remove dialog box
                Get.back();
                // Pop again to go previous view
                Get.back();
              },
              icon: const Icon(
                Icons.done,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
