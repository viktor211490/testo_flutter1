import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testo/generated/l10n.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          S.current.menu_app_bar_title,
          style: const TextStyle(
            fontSize: 23,
          ),
        ),
      ),
    );
  }
}
