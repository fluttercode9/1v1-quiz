import 'package:flutter_bloc/flutter_bloc.dart';

abstract class GameEvent {}

class QuestionAnsweredEvent extends GameEvent {}

class GameEndedEvent extends GameEvent {}
