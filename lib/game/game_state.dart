import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/question/question.dart';
import '../models/team/team.dart';

part 'game_state.freezed.dart';

enum GameStatus { initial, inProgress, ended, answering, answered }

@freezed
class GameState with _$GameState {
  const factory GameState({
    required GameStatus status,
    required List<Question> questions,
    required List<Question> answeredQuestions,
    required Team team1,
    required Team team2,
    String? winner,
    required int answering,
  }) = _GameState;
}
