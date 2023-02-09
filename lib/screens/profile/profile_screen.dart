import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testo/generated/l10n.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          S.current.profile_app_bar_title,
          style: const TextStyle(
            fontSize: 23,
          ),
        ),
      ),
    );
  }
}
