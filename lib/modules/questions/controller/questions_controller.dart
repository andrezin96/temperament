import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/constants/temperaments/temperaments.dart';
import '../../../core/services/services.dart';
import '../../../models/models.dart';

part 'questions_controller.g.dart';

class QuestionsController = _QuestionsController with _$QuestionsController;

abstract class _QuestionsController with Store {
  final List<QuestionsModel> questions = Temperaments.questions;

  PageController pageController = PageController();

  @observable
  int currentIndex = 0;

  @observable
  String currentRadioValue = '';

  @observable
  List<String> firstPart = [];

  @observable
  List<String> secondPart = [];

  @observable
  String temperament = '';

  @action
  Future<bool> next(int index) async {
    if (index < 9) {
      if (currentRadioValue.isNotEmpty) {
        _addItemToList(index);
        currentIndex = index + 1;
        pageController.jumpToPage(currentIndex);
      }
      return false;
    } else {
      await _writeStorage(KeysStorage.temperament, _combinationResult());
      return true;
    }
  }

  @action
  String setCurrentValue(String value) {
    return currentRadioValue = value;
  }

  @action
  void resetQuiz() {
    pageController.jumpToPage(0);
    currentRadioValue = '';
    firstPart.clear();
    secondPart.clear();
    currentIndex = 0;
  }

  Future<bool> _writeStorage(String key, dynamic value) async {
    try {
      await localStorage.write(KeysStorage.temperament, _combinationResult());
      return true;
    } catch (e) {
      return false;
    }
  }

  void _addItemToList(int index) {
    if (index <= 4) {
      firstPart.add(currentRadioValue);
      currentRadioValue = '';
    } else {
      secondPart.add(currentRadioValue);
      currentRadioValue = '';
    }
  }

  int _compareItems(List<String> list) {
    return list.where((element) => element == 'a').length;
  }

  String _checkFirstPart() {
    final result = _compareItems(firstPart);
    if (result >= 3) {
      return 'quente';
    } else {
      return 'frio';
    }
  }

  String _checkSecondPart() {
    final result = _compareItems(secondPart);
    if (result >= 3) {
      return 'seco';
    } else {
      return 'umido';
    }
  }

  String _combinationResult() {
    final String firstResult = _checkFirstPart();
    final String secondResult = _checkSecondPart();

    final String combination = '$firstResult-$secondResult';

    switch (combination) {
      case 'quente-umido':
        return 'Sanguíneo';
      case 'quente-seco':
        return 'Colérico';
      case 'frio-umido':
        return 'Fleumático';
      case 'frio-seco':
        return 'Melancólico';
      default:
        return 'Inconclusivo';
    }
  }
}
