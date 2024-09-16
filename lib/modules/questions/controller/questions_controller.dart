import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../models/models.dart';

part 'questions_controller.g.dart';

class QuestionsController = _QuestionsController with _$QuestionsController;

abstract class _QuestionsController with Store {
  final List<QuestionsModel> questions = const [
    QuestionsModel(
      label: 'Quando você recebe uma má noticia, como você reage?',
      optionA: 'Tem uma reação rápida, já dala logo alguma coisa.',
      optionB: 'Demora um tempo para assimilar.',
    ),
    QuestionsModel(
      label:
          'Você fez uma prova para a qual não estudou, no dia seguinte descobre que tirou uma nota muito boa, qual seria sua reação?',
      optionA: 'Fica muito alegre comemora e conta pra todo mundo.',
      optionB: 'Fica surpreso mas sem palavras, só pensa "Graças a Deus".',
    ),
    QuestionsModel(
      label: 'Você tá afim de alguém, como você reage?',
      optionA: 'Já começa a demonstrar, falar sobre, dar umas olhadas, andar perto.',
      optionB: 'Esconder até não aguentar mais, ou esperar a pessoa ler a sua mente.',
    ),
    QuestionsModel(
      label: 'Quando você está numa festa que não conhece todo mundo, como você costuma se portar?',
      optionA: 'Conversa com todo mundo, mas evita assunto bobo. No fim da festa e amigo de todos.',
      optionB: 'Procura ficar nos lugares mais reservados, conversa educadamente mas geralmente não puxa assunto.',
    ),
    QuestionsModel(
      label: 'Você tem um amigo, e esse amigo te decepcionou, como você reage?',
      optionA: 'Você vai ficar pra sempre com uma pulga atrás da orelha e tem chance de não confiar mais nessa pessoa.',
      optionB: 'No final você nem lembra que precisou da ajuda, a pessoa pode ter tido um dia difícil.',
    ),
    QuestionsModel(
      label: 'Quando você fica ofendido, quanto tempo esse sentimento perdura em você?',
      optionA: 'Por muito tempo.\nSempre que lembro fico muito triste ou com muita raiva.',
      optionB: 'Fico com raiva ou triste na hora, mas logo passa, ou as vezes eu nem levo em consideração.',
    ),
    QuestionsModel(
      label: 'Se você pudesse escolher um estilo de vida, qual seria?',
      optionA:
          'Repleto de desafios onde eu sempre pudesse superar meus limites.\nFazendo algo para impactar, transformar e ajudar a vida das pessoas.',
      optionB:
          'Viajarmuito, conhecer o mundo, ganhar muito dinheiro e ter muitos amigos.\nTer uma condição de vida boa e poder viver sossegado, desfrutando o melhor da vida.',
    ),
    QuestionsModel(
      label:
          'Imagine uma pessoa em quem você confia e que é importante para você. Quais as chances de você continuar igual com ela depois dela quebrar sua confiança?',
      optionA:
          'Quase nula! Quebrou minha confiança uma vez só recupera depois de anos ou nunca.\nPosso até conviver, mas na primeira oprtuinidade vou me lembrar, sempre vou ter um pé atrás.',
      optionB:
          'Muitas chances! Sempre penso que a pessoa pode estar num dia difícil... A vida é muito curta pra brigar por pouco.\nGeralmente não ligo, isso não costuma acontecer comigo. Além do mais, não sou muito apegado as pessoas.',
    ),
    QuestionsModel(
      label:
          'Tendo uma rotina rigorosa ou não(geralmente temos pelo menos uma ideia do que fazer num dia). Como você reage quando alguèm quebra sua rotina? Ex: visita inesperada, cancelamento de compromisso, mudança de horário...',
      optionA:
          'Não me importo com imprevistos, mas não gosto que ajam como se meu tempo não fosse importante,\nDetesto ser pego de surpresa, me sinto sem chão.',
      optionB:
          'Não me importo, nem sempre a vida acontece como planejamos e também, amo visitas inesperadas. Se desmarcam comigo. Já arrumo algo para fazer.\nNão me importo, sempre da pra me adaptar as situações.',
    ),
    QuestionsModel(
      label: 'Quando está discutindo com alguém, no calor do momento, como você costuma agir?',
      optionA: 'Falo um monte, só depois que vou pensar no que eu disse.\nJá tenho resposta na hora, bateu, levou.',
      optionB: 'Penso muito, mas resposta boa mesmo vem 2 semanas depois.\nTravo total, não encontro palavra nenhuma.',
    ),
  ];

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
  String? next(int index) {
    if (index < 9) {
      _addItemToList(index);
      currentIndex = index + 1;
      pageController.jumpToPage(currentIndex);
      return null;
    } else {
      return temperament = _combinationResult();
    }
  }

  @action
  String setCurrentValue(String value) {
    log(value);
    return currentRadioValue = value;
  }

  @action
  void resetQuiz() {
    pageController.jumpToPage(0);
    currentRadioValue = '';
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
    final result = _compareItems(firstPart);
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
