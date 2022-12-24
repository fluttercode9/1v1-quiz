import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/models/question/question.dart';

import '../models/answer/answer.dart';

abstract class GameEvent {}

class GameStartedEvent extends GameEvent {}

class QuestionAnsweredEvent extends GameEvent {
  final Question question;

  QuestionAnsweredEvent(this.question);
}

class GameEndedEvent extends GameEvent {}

class TeamAnsweringEvent extends GameEvent {
  final int team;

  TeamAnsweringEvent(this.team);
}

class TeamAnsweredEvent extends GameEvent {
  final Answer answer;
  final BuildContext context;

  TeamAnsweredEvent(this.answer, this.context);
}

class NextQuestionEvent extends GameEvent {}
