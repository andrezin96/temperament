import 'package:flutter/material.dart';

import '../modules/modules.dart';

abstract class Go {
  Future<T?> push<T extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  });
  Future<T?> replace<T extends Object?, TO extends Object?>(
    BuildContext context,
    String routeName, {
    TO? result,
    Object? arguments,
  });
  void pop(BuildContext context);
}

class GoImpl implements Go {
  @override
  void pop(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Future<T?> push<T extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.pushNamed<T>(
      context,
      routeName,
      arguments: arguments,
    );
  }

  @override
  Future<T?> replace<T extends Object?, TO extends Object?>(
    BuildContext context,
    String routeName, {
    TO? result,
    Object? arguments,
  }) {
    return Navigator.pushReplacementNamed<T, TO>(
      context,
      routeName,
      result: result,
      arguments: arguments,
    );
  }
}

class GoTo extends GoImpl {
  Future<void> home(BuildContext context) {
    return replace(context, HomeRoutes.home);
  }

  Future<void> questions(BuildContext context) {
    return push(context, QuestionsRoutes.questions);
  }

  Future<void> result(BuildContext context) {
    return replace(context, ResultRoutes.result);
  }

  Future<void> about(BuildContext context) {
    return push(context, AboutRoutes.about);
  }
}

final GoTo go = GoTo();
