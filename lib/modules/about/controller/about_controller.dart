import 'package:mobx/mobx.dart';

import '../../../core/constants/temperaments/temperaments.dart';

part 'about_controller.g.dart';

class AboutController = _AboutController with _$AboutController;

abstract class _AboutController with Store {
  final about = Temperaments.about;
}
