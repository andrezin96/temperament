// ignore_for_file: public_member_api_docs, sort_constructors_first
class QuestionsModel {
  const QuestionsModel({
    required this.label,
    required this.optionA,
    required this.optionB,
  });
  final String label;
  final String optionA;
  final String optionB;

  QuestionsModel copyWith({
    String? label,
    String? optionA,
    String? optionB,
  }) {
    return QuestionsModel(
      label: label ?? this.label,
      optionA: optionA ?? this.optionA,
      optionB: optionB ?? this.optionB,
    );
  }
}
