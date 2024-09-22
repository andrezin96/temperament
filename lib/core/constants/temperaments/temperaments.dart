import '../../../models/models.dart';

class Temperaments {
  static const List<QuestionsModel> questions = [
    QuestionsModel(
      label: 'Quando você recebe uma má noticia, como você reage?',
      optionA: 'Tem uma reação rápida, já fala logo alguma coisa.',
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
          'Não me importo, nem sempre a vida acontece como planejamos e também, amo visitas inesperadas. Se desmarcam comigo, já arrumo algo para fazer.\nNão me importo, sempre da pra me adaptar as situações.',
    ),
    QuestionsModel(
      label: 'Quando está discutindo com alguém, no calor do momento, como você costuma agir?',
      optionA: 'Falo um monte, só depois que vou pensar no que eu disse.\nJá tenho resposta na hora, bateu, levou.',
      optionB: 'Penso muito, mas resposta boa mesmo vem 2 semanas depois.\nTravo total, não encontro palavra nenhuma.',
    ),
  ];

  static const String melancolico = '''
Frio e Seco
Algumas características de pessoas com temperamento sanguíneo são:

- Extroversão: São pessoas extrovertidas e sociáveis, que gostam de estar com outras pessoas; 
- Otimismo: São otimistas e alegres, e veem o copo meio cheio; 
- Energia: São pessoas enérgicas e cheias de entusiasmo; 
- Espontaneidade: São espontâneas e impulsivas, e podem ter dificuldade em manter a atenção; 
- Adaptabilidade: São pessoas que se adaptam bem às mudanças; 
- Comunicabilidade: São pessoas que comunicam bem e são persuasivas; 
- Proatividade: São pessoas proativas no trabalho;
- Facilidade de fazer amigos: São pessoas que fazem amizade facilmente; 
- Agitação: São pessoas agitadas por natureza; 
''';

  static const String colerico = '''
Quente e Úmido
Algumas das suas características incluem:

- Serem motivadas e orientadas para objetivos 
- Serem grandes realizadoras no trabalho, na escola ou no lazer 
- Serem estimuladas por adversidades 
- Terem habilidade para liderança 
- Gostam de desafios 
- Serem diretas e assertivas na comunicação 
- Preferirem ir direto ao ponto 
- Poderem parecer bruscas ou impacientes 
- Terem clareza e objetividade 
''';

  static const String fleumatico = '''
Frio e Úmido
Algumas características de uma pessoa fleumática são:

- É diplomática, pacífica e mística;
- É amigável, agradável e alegre;
- É calma e dificilmente se zanga;
- Não gosta de confrontos e desavenças;
- É bom ouvinte;
- É desprendido e generoso;
- É constante, paciente, confiável, fiel e leal;
- É adaptável, embora não goste de mudanças;
- É motivado pela busca de segurança;
''';

  static const String sanguineo = '''
Quente e Seco
Pessoas com temperamento melancólico podem ter algumas características, como:

- Sensível: São pessoas sensíveis e se magoam facilmente;
- Introvertidas: Preferem ficar sozinhas e ter seu próprio espaço; 
- Perfeccionistas: Gostam de fazer as coisas da maneira certa;
- Dedicadas: São dedicadas e gostam de se dedicar a algo que amam; 
- Nostalgicas: São nostálgicas e muito detalhistas;
- Leis: São muito leais e dedicados às pessoas;
- Criativas: Têm muita criatividade;
- Pessimistas: São pessimistas;
- Rancorosas: São rancorosas e difíceis de se reconciliar; 
- Inseguras: São inseguras e muito vulneráveis;
''';

  static const String about = '''
Descubra seu Temperamento

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
