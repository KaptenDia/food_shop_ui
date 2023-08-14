import 'package:flutter/material.dart';
import 'package:food_shop_ui/core.dart';
import 'package:provider/provider.dart';

class CartController extends State<CartView> {
  static late CartController instance;
  late CartView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  void removeFromCart(Food food) {
    // Get access to shop
    final shop = context.read<HomeController>();
    // remove from cart
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
