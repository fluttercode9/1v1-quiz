// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameState {
  GameStatus get status => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  List<Question> get answeredQuestions => throw _privateConstructorUsedError;
  Team get team1 => throw _privateConstructorUsedError;
  Team get team2 => throw _privateConstructorUsedError;
  int get answering => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call(
      {GameStatus status,
      List<Question> questions,
      List<Question> answeredQuestions,
      Team team1,
      Team team2,
      int answering});

  $TeamCopyWith<$Res> get team1;
  $TeamCopyWith<$Res> get team2;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? questions = null,
    Object? answeredQuestions = null,
    Object? team1 = null,
    Object? team2 = null,
    Object? answering = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      answeredQuestions: null == answeredQuestions
          ? _value.answeredQuestions
          : answeredQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      team1: null == team1
          ? _value.team1
          : team1 // ignore: cast_nullable_to_non_nullable
              as Team,
      team2: null == team2
          ? _value.team2
          : team2 // ignore: cast_nullable_to_non_nullable
              as Team,
      answering: null == answering
          ? _value.answering
          : answering // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get team1 {
    return $TeamCopyWith<$Res>(_value.team1, (value) {
      return _then(_value.copyWith(team1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get team2 {
    return $TeamCopyWith<$Res>(_value.team2, (value) {
      return _then(_value.copyWith(team2: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$$_GameStateCopyWith(
          _$_GameState value, $Res Function(_$_GameState) then) =
      __$$_GameStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GameStatus status,
      List<Question> questions,
      List<Question> answeredQuestions,
      Team team1,
      Team team2,
      int answering});

  @override
  $TeamCopyWith<$Res> get team1;
  @override
  $TeamCopyWith<$Res> get team2;
}

/// @nodoc
class __$$_GameStateCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$_GameState>
    implements _$$_GameStateCopyWith<$Res> {
  __$$_GameStateCopyWithImpl(
      _$_GameState _value, $Res Function(_$_GameState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? questions = null,
    Object? answeredQuestions = null,
    Object? team1 = null,
    Object? team2 = null,
    Object? answering = null,
  }) {
    return _then(_$_GameState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      answeredQuestions: null == answeredQuestions
          ? _value._answeredQuestions
          : answeredQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      team1: null == team1
          ? _value.team1
          : team1 // ignore: cast_nullable_to_non_nullable
              as Team,
      team2: null == team2
          ? _value.team2
          : team2 // ignore: cast_nullable_to_non_nullable
              as Team,
      answering: null == answering
          ? _value.answering
          : answering // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameState implements _GameState {
  const _$_GameState(
      {required this.status,
      required final List<Question> questions,
      required final List<Question> answeredQuestions,
      required this.team1,
      required this.team2,
      required this.answering})
      : _questions = questions,
        _answeredQuestions = answeredQuestions;

  @override
  final GameStatus status;
  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<Question> _answeredQuestions;
  @override
  List<Question> get answeredQuestions {
    if (_answeredQuestions is EqualUnmodifiableListView)
      return _answeredQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answeredQuestions);
  }

  @override
  final Team team1;
  @override
  final Team team2;
  @override
  final int answering;

  @override
  String toString() {
    return 'GameState(status: $status, questions: $questions, answeredQuestions: $answeredQuestions, team1: $team1, team2: $team2, answering: $answering)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality()
                .equals(other._answeredQuestions, _answeredQuestions) &&
            (identical(other.team1, team1) || other.team1 == team1) &&
            (identical(other.team2, team2) || other.team2 == team2) &&
            (identical(other.answering, answering) ||
                other.answering == answering));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_answeredQuestions),
      team1,
      team2,
      answering);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameStateCopyWith<_$_GameState> get copyWith =>
      __$$_GameStateCopyWithImpl<_$_GameState>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {required final GameStatus status,
      required final List<Question> questions,
      required final List<Question> answeredQuestions,
      required final Team team1,
      required final Team team2,
      required final int answering}) = _$_GameState;

  @override
  GameStatus get status;
  @override
  List<Question> get questions;
  @override
  List<Question> get answeredQuestions;
  @override
  Team get team1;
  @override
  Team get team2;
  @override
  int get answering;
  @override
  @JsonKey(ignore: true)
  _$$_GameStateCopyWith<_$_GameState> get copyWith =>
      throw _privateConstructorUsedError;
}
