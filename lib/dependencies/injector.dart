import 'package:get_it/get_it.dart';

import '../modules/modules.dart';

abstract class Injector {
  T get<T extends Object>();
  void replace<T extends Object>(T instance);
}

class _GetItImpl implements Injector {
  _GetItImpl() {
    _register();
  }

  void _register() {
    GetIt.I.registerLazySingleton(QuestionsController.new);
    GetIt.I.registerLazySingleton(AboutController.new);
  }

  @override
  T get<T extends Object>() {
    return GetIt.I.get<T>();
  }

  @override
  void replace<T extends Object>(T instance) {
    GetIt.I.unregister(instance: instance);
    GetIt.I.registerLazySingleton<T>(() => instance);
  }
}

final Injector injector = _GetItImpl();
