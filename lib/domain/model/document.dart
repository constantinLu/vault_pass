import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vault_pass/domain/microtypes/microtypes.dart';

import 'types.dart';

part 'document.freezed.dart';
@freezed
class Document with _$Document {
  factory Document({
    //core
    required UniqueId id,
    required Name name,
    required Type type,
    required AccountType accountType,
    required DateTime createdDate,
    required DateTime updatedDate,
    bool? isFavorite,
    //specific
    required Map<String, String> data,
    required String? details,
  }) = _Document;

  factory Document.empty() => Document(
      id: UniqueId.fromUniqueString(""),
      name: Name(""),
      type: Type.record,
      accountType: AccountType.personal,
      createdDate: DateTime.now(),
      updatedDate: DateTime.now(),
      isFavorite: false,
      data: {},
      details: "");

  factory Document.random({required String data, required String details, Type? recordType, AccountType? accountType}) => Document(
      id: UniqueId(),
      name: Name("SomeName"),
      type: recordType ?? Type.record,
      accountType: accountType ?? AccountType.personal,
      createdDate: DateTime.now(),
      updatedDate: DateTime.now(),
      isFavorite: false,
      data: {},
      details: "");

  factory Document.create({
    required String name,
    required String data,
    required String details,
    Type? type,
    AccountType? accountType,
    bool? isFavorite,
  }) =>
      Document(
          id: UniqueId(),
          name: Name(name),
          type: type ?? Type.address,
          accountType: accountType ?? AccountType.personal,
          createdDate: DateTime.now(),
          updatedDate: DateTime.now(),
          isFavorite: isFavorite,
          data: {},
          details: "");

  factory Document.update({
    required String name,
    required String data,
    required String details,
    Type? type,
    AccountType? accountType,
    bool? isFavorite,
  }) =>
      Document(
          id: UniqueId(),
          name: Name(name),
          type: type ?? Type.address,
          accountType: accountType ?? AccountType.personal,
          createdDate: DateTime.now(),
          updatedDate: DateTime.now(),
          isFavorite: isFavorite,
          data: {},
          details: "");
}
