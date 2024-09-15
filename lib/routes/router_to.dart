import 'package:flutter/material.dart';

abstract class RouterTo {
  static Future<T?> push<T extends Object?, TO extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.pushNamed(
      context,
      routeName,
      arguments: arguments,
    );
  }

  static Future<T?> replace<T extends Object?, TO extends Object?>(
    BuildContext context,
    String routeName, {
    TO? result,
    Object? arguments,
  }) {
    return Navigator.pushReplacementNamed(
      context,
      routeName,
      arguments: arguments,
      result: result,
    );
  }

  static void pop<T extends Object?>(BuildContext context, [T? result]) {
    return Navigator.pop(context, result);
  }
}
