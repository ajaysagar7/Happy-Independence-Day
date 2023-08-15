import 'package:flutter/material.dart';

import 'Animations/india_flag_animation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: IndiaFlagAnimationScreen());
  }
}
