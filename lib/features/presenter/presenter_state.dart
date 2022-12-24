import 'package:freezed_annotation/freezed_annotation.dart';

part 'presenter_state.freezed.dart';

@freezed
class PresenterState with _$PresenterState {
  const factory PresenterState.initial() = _PresenterStateInitial;
  const factory PresenterState.playing() = _PresenterStatePlaying;
  const factory PresenterState.free() = _PresenterStateFree;
}
