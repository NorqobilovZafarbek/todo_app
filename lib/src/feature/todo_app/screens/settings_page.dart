import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final ValueNotifier<bool> isDark;

  const SettingsPage({super.key, required this.isDark});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: widget.isDark,
        builder: (context, value, child) {
          return Scaffold();
        });
  }
}
