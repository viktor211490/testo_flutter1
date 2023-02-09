import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testo/generated/l10n.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          S.current.cart_app_bar_title,
          style: const TextStyle(
            fontSize: 23,
          ),
        ),
      ),
    );
  }
}
