import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:week7/core/networking/api_error_model.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;

  const factory SignupState.signupLoading() = SignupLoading;

  const factory SignupState.signupSuccess(T data) = SignupSuccess<T>;

  const factory SignupState.signupError(ApiErrorModel apiErrorModel) = SignupError;
}
