import 'package:mobx/mobx.dart';

import '../../../core/constants/temperaments/temperaments.dart';
import '../../../core/services/services.dart';

part 'result_controller.g.dart';

class ResultController = _ResultController with _$ResultController;

abstract class _ResultController with Store {
  final String sanguineo = Temperaments.sanguineo;
  final String colerico = Temperaments.colerico;
  final String fleumatico = Temperaments.fleumatico;
  final String melancolico = Temperaments.melancolico;

  @observable
  String result = '';

  @observable
  String detail = '';

  @action
  dynamic readTemperament() {
    result = localStorage.read<dynamic>(KeysStorage.temperament) as String;
    return _checkResult();
  }

  String _checkResult() {
    switch (result) {
      case 'Sanguíneo':
        return detail = sanguineo;
      case 'Fleumático':
        return detail = fleumatico;
      case 'Colérico':
        return detail = colerico;
      case 'Melancólico':
        return detail = melancolico;
      default:
        return detail = 'Inconclusivo';
    }
  }

  @action
  void clearTemperament() {
    result = '';
    detail = '';
    return localStorage.remove(KeysStorage.temperament);
  }
}
