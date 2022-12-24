import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/answer/answer.dart';

// part 'answers_cubit.freezed.dart';

class AnswerCubit extends Cubit<Color> {
  AnswerCubit() : super(Colors.white);

  void rightAnswer() {
    emit(Colors.green);
  }

  void wrongAnswer() {
    emit(Colors.red);
  }
}

// @freezed
// class AnswerState with _$AnswerState {
//   const factory AnswerState({required Color color}) = _AnswerState;
// }
