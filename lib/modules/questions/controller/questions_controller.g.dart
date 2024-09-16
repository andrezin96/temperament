// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QuestionsController on _QuestionsController, Store {
  late final _$currentIndexAtom = Atom(name: '_QuestionsController.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$currentRadioValueAtom = Atom(name: '_QuestionsController.currentRadioValue', context: context);

  @override
  String get currentRadioValue {
    _$currentRadioValueAtom.reportRead();
    return super.currentRadioValue;
  }

  @override
  set currentRadioValue(String value) {
    _$currentRadioValueAtom.reportWrite(value, super.currentRadioValue, () {
      super.currentRadioValue = value;
    });
  }

  late final _$firstPartAtom = Atom(name: '_QuestionsController.firstPart', context: context);

  @override
  List<String> get firstPart {
    _$firstPartAtom.reportRead();
    return super.firstPart;
  }

  @override
  set firstPart(List<String> value) {
    _$firstPartAtom.reportWrite(value, super.firstPart, () {
      super.firstPart = value;
    });
  }

  late final _$secondPartAtom = Atom(name: '_QuestionsController.secondPart', context: context);

  @override
  List<String> get secondPart {
    _$secondPartAtom.reportRead();
    return super.secondPart;
  }

  @override
  set secondPart(List<String> value) {
    _$secondPartAtom.reportWrite(value, super.secondPart, () {
      super.secondPart = value;
    });
  }

  late final _$temperamentAtom = Atom(name: '_QuestionsController.temperament', context: context);

  @override
  String get temperament {
    _$temperamentAtom.reportRead();
    return super.temperament;
  }

  @override
  set temperament(String value) {
    _$temperamentAtom.reportWrite(value, super.temperament, () {
      super.temperament = value;
    });
  }

  late final _$_QuestionsControllerActionController = ActionController(name: '_QuestionsController', context: context);

  @override
  String? next(int index) {
    final _$actionInfo = _$_QuestionsControllerActionController.startAction(
      name: '_QuestionsController.next',
    );
    try {
      return super.next(index);
    } finally {
      _$_QuestionsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String setCurrentValue(String value) {
    final _$actionInfo = _$_QuestionsControllerActionController.startAction(
      name: '_QuestionsController.setCurrentValue',
    );
    try {
      return super.setCurrentValue(value);
    } finally {
      _$_QuestionsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex},
currentRadioValue: ${currentRadioValue},
firstPart: ${firstPart},
secondPart: ${secondPart},
temperament: ${temperament}
    ''';
  }
}
