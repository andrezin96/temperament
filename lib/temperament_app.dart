import 'package:flutter/material.dart';

import 'routes/routes.dart';

class TemperamentApp extends StatelessWidget {
  const TemperamentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: TemperamentRoutes.routes,
    );
  }
}
