import 'package:flutter/material.dart';

import '../../../routes/temperament_navigator.dart';

class SplashTemplate extends StatefulWidget {
  const SplashTemplate({super.key});

  @override
  State<SplashTemplate> createState() => _SplashTemplateState();
}

class _SplashTemplateState extends State<SplashTemplate> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).whenComplete(() => Go.home(context));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Temperament',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
