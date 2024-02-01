import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vault_pass/domain/microtypes/microtypes.dart';

import 'types.dart';

part 'record.freezed.dart';

@freezed
class Record with _$Record {
  factory Record({
    //core
    required UniqueId id,
    required Name name,
    required Type type,
    required AccountType accountType,
    required DateTime createdDate,
    required DateTime updatedDate,
    bool? isFavorite,
    //specific
    required Name loginRecord,
    required Password passwordRecord,
    required String logo,
    required Description description,
    required Url url,
  }) = _Record;

  factory Record.empty() => Record(
        id: UniqueId.fromUniqueString(""),
        name: Name(""),
        type: Type.record,
        accountType: AccountType.personal,
        loginRecord: Name(""),
        passwordRecord: Password(""),
        logo: "",
        description: Description(""),
        url: Url(""),
        isFavorite: false,
        createdDate: DateTime.now(),
        updatedDate: DateTime.now(),
      );

  factory Record.random(
          {required String recordName,
          required String logo,
          required String description,
          required String url,
          Type? recordType,
          AccountType? accountType}) =>
      Record(
        id: UniqueId(),
        name: Name(recordName),
        type: recordType ?? Type.record,
        accountType: accountType ?? AccountType.personal,
        loginRecord: Name(""),
        passwordRecord: Password(""),
        logo: logo,
        description: Description(description),
        url: Url(url),
        isFavorite: false,
        createdDate: DateTime.now(),
        updatedDate: DateTime.now(),
      );

  factory Record.create({
    required String recordName,
    required String recordType,
    required String logo,
    required String loginRecord,
    required String loginPassword,
    required String url,
    required String description,
    bool? isFavorite,
  }) =>
      Record(
          id: UniqueId(),
          name: Name(recordName),
          type: Type.record,
          accountType: AccountType.personal,
          loginRecord: Name(loginRecord),
          passwordRecord: Password(loginPassword),
          logo: logo,
          description: Description(description),
          url: Url(url),
          isFavorite: isFavorite ?? false,
          createdDate: DateTime.now(),
          updatedDate: DateTime.now());

  factory Record.update({
    required UniqueId id,
    required String recordName,
    required String logo,
    required String loginRecord,
    required String loginPassword,
    required String url,
    required String description,
    bool? isFavorite,
  }) =>
      Record(
          id: id,
          name: Name(recordName),
          type: Type.record,
          accountType: AccountType.personal,
          loginRecord: Name(loginRecord),
          passwordRecord: Password(loginPassword),
          logo: logo,
          description: Description(description),
          url: Url(url),
          isFavorite: isFavorite ?? false,
          createdDate: DateTime.now(),
          updatedDate: DateTime.now());
}
