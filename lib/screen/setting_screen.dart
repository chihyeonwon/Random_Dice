import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  final double threshold; // Slider 민감도의 현재값

  final ValueChanged<double> onThresholdChange;

  const SettingScreen({
    required this.threshold,
    required this.onThresholdChange,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
