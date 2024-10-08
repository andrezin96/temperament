import 'package:flutter/material.dart';

import '../../../routes/go.dart';

class SplashTemplate extends StatefulWidget {
  const SplashTemplate({super.key});

  @override
  State<SplashTemplate> createState() => _SplashTemplateState();
}

class _SplashTemplateState extends State<SplashTemplate> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      if (mounted) {
        go.home(context);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/icon/cerebro.png',
          scale: 2,
        ),
      ),
    );
  }
}
