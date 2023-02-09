import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testo/generated/l10n.dart';

class PromoScreen extends StatefulWidget {
  const PromoScreen({super.key});

  @override
  State<PromoScreen> createState() => _PromoScreenState();
}

class _PromoScreenState extends State<PromoScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          S.current.promo_app_bar_title,
          style: const TextStyle(
            fontSize: 23,
          ),
        ),
      ),
    );
  }
}
