import 'package:get_it/get_it.dart';

import '../modules/modules.dart';

final GetIt getIt = GetIt.instance;

abstract class Injector {
  static QuestionsController questionsController = getIt.registerSingleton<QuestionsController>(QuestionsController());
}
