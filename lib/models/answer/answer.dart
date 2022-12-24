import 'package:freezed_annotation/freezed_annotation.dart';
part 'answer.freezed.dart';
part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  const factory Answer({required String text, @Default(false) bool isRight}) =
      _Answer;

  factory Answer.fromJson(Map<String, Object?> json) => _$AnswerFromJson(json);
}
