import 'package:mobx/mobx.dart';

part 'about_controller.g.dart';

class AboutController = _AboutController with _$AboutController;

abstract class _AboutController with Store {
  final String textoApp = '''
Descubra Seu Temperamento

Bem-vindo ao nosso quiz de temperamento! Neste teste rápido, você responderá a 10 perguntas simples que ajudarão a revelar qual é o seu perfil de temperamento.

As primeiras 5 perguntas vão nos ajudar a entender se você tem um temperamento mais quente ou frio, enquanto as próximas 5 perguntas vão descobrir se você é seco ou úmido.

Como funciona:
- Quente ou Frio? Queremos entender o quanto você é enérgico, ativo ou mais tranquilo e reservado.
- Seco ou Úmido? Isso nos ajuda a ver se você é mais estruturado e estável (seco) ou flexível e adaptável (úmido).

Combinando os resultados:
Com base nas suas respostas, você se encaixará em um dos seguintes perfis de temperamento:

1. Quente e Úmido (Sanguíneo): Extrovertido, otimista e adaptável, você está sempre em movimento e gosta de interagir com as pessoas.
2. Quente e Seco (Colérico): Determinado, ativo e organizado, você é focado e gosta de ter o controle das situações.
3. Frio e Úmido (Fleumático): Calmo, pacífico e paciente, você é estável e prefere ambientes tranquilos e harmônicos.
4. Frio e Seco (Melancólico): Detalhista, introspectivo e analítico, você prefere planejar cuidadosamente e gosta de estabilidade.

Responda às perguntas e descubra seu temperamento agora!
''';
}
