import 'package:flutter/material.dart';
import 'package:food_shop_ui/module/menu/model/food.dart';
import 'package:food_shop_ui/module/menu/widget/food_tile.dart';
import 'package:food_shop_ui/shared/theme/colors.dart';
import 'package:food_shop_ui/shared/widget/button/button.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  // Food Menu
  List foodMenu = [
    Food(
      name: "Healty Food",
      price: "21.00",
      imagePath: "assets/images/1.png",
      rating: "4.7",
    ),
    Food(
      name: "Salad",
      price: "19.00",
      imagePath: "assets/images/2.png",
      rating: "4.8",
    ),
    Food(
      name: "Junk Food",
      price: "25.00",
      imagePath: "assets/images/3.png",
      rating: "4.9",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Food Maniac',
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Promo Banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Promo Message
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get 23% Promo',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Redeem Button
                    MyButton(
                      text: 'Redeem',
                      onTap: () {},
                    ),
                  ],
                ),
                // Image
                Image.asset(
                  'assets/images/3.png',
                  height: 100,
                ),
              ],
            ),
          ),
          //  Search Bqr
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Search Here...",
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          // Menu List
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodMenu.length,
                itemBuilder: (context, index) => FoodTile(
                      food: foodMenu[index],
                    )),
          ),
          const SizedBox(
            height: 24,
          ),
          // Popular Food
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Popular Food',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Image
                    Image.asset(
                      'assets/images/3.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    // Name and Price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name
                        Text(
                          'Healthy Food',
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 18,
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        // Price
                        Text(
                          '\$21.00',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // Heart
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
