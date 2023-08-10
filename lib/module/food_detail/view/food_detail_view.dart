import 'package:flutter/material.dart';
import 'package:food_shop_ui/core.dart';
import 'package:food_shop_ui/module/food_detail/controller/food_detail_controller.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home/model/food.dart';

class FoodDetailView extends StatefulWidget {
  final Food food;
  const FoodDetailView({super.key, required this.food});

  Widget build(context, FoodDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          // ListView of food details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ListView(
                children: [
                  // Image
                  Image.asset(
                    food.imagePath,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  // Rating
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      // Rating number
                      Text(
                        food.rating,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // Food Name
                  Text(
                    food.name,
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 28,
                    ),
                  ),

                  //  Description
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Junk food refers to highly processed and low-nutrient foods that are often high in calories, sugars, fats, and salts, offering little to no nutritional value.',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Price + quantity + add to cart button
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                // Price + quantity
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Price
                    Text(
                      "\$${food.price}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    // Quantity
                    Row(
                      children: [
                        // Minus Button
                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            onPressed: controller.decrementQuantity,
                          ),
                        ),

                        // Quantity Count
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              controller.quantityCount.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),

                        // Plus Button
                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: controller.incrementQuantity,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                // Add to cart button
                MyButton(
                  text: "Add To Cart",
                  onTap: controller.addToCart,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<FoodDetailView> createState() => FoodDetailController();
}
