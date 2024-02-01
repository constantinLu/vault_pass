import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vault_pass/domain/model/types.dart';

part 'token.freezed.dart';

@freezed
abstract class Token implements _$Token {
  const Token._();

  factory Token(
      {required String? userId,
      required String? emailAddress,
      required AuthState authState}) = _Token;
}
