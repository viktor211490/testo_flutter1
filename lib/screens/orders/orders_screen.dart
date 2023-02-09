import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testo/generated/l10n.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          S.current.orders_app_bar_title,
          style: const TextStyle(
            fontSize: 23,
          ),
        ),
      ),
    );
  }
}
