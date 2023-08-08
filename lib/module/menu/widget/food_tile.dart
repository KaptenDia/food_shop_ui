import 'package:flutter/material.dart';
import 'package:food_shop_ui/module/menu/model/food.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 24,
      ),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // image
          Image.asset(
            food.imagePath,
            height: 140,
          ),
          // Text
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 20,
            ),
          ),
          // Price + Rating
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                Text(
                  '\$${food.price}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
                // Rating
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      food.rating,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
