import 'package:flutter/material.dart';
import 'package:food_shop_ui/core.dart';
import 'package:provider/provider.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  Widget build(context, CartController controller) {
    controller.view = this;

    return Consumer<HomeController>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          foregroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "My Cart",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: primaryColor,
          actions: const [],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Customer cart
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  final Food food = value.cart[index];
                  final String foodName = food.name;
                  final String foodPrice = food.price;
                  return Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                    ),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        foodPrice,
                        style: TextStyle(
                          color: Colors.grey[200],
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () => controller.removeFromCart(food),
                        icon: Icon(
                          Icons.delete,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Pay button
            Padding(
              padding: const EdgeInsets.all(24),
              child: MyButton(
                text: "Pay Now",
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CartView> createState() => CartController();
}
