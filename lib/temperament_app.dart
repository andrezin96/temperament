import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'routes/routes.dart';
import 'theme/theme.dart';

class TemperamentApp extends StatelessWidget {
  const TemperamentApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      theme: TemperamentThemeData.primary.temperamentTheme,
      debugShowCheckedModeBanner: false,
      routes: TemperamentRoutes.routes,
    );
  }
}
