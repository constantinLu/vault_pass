import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vault_pass/domain/microtypes/microtypes.dart';

import 'types.dart';

part 'address.freezed.dart';

@freezed
class Address with _$Address {
  factory Address({
    //core
    required UniqueId id,
    required Name name,
    required Type type,
    required AccountType accountType,
    required DateTime createdDate,
    required DateTime updatedDate,
    bool? isFavorite,
    //specific
    required String addressLine,
    required String county,
    required String city,
  }) = _Address;

  factory Address.empty() => Address(
      id: UniqueId.fromUniqueString(""),
      name: Name(""),
      type: Type.record,
      accountType: AccountType.personal,
      createdDate: DateTime.now(),
      updatedDate: DateTime.now(),
      isFavorite: false,
      addressLine: "",
      county: "",
      city: "");

  factory Address.random(
          {required String addressLine, required String county, required String city, Type? recordType, AccountType? accountType}) =>
      Address(
          id: UniqueId(),
          name: Name("SomeName"),
          type: recordType ?? Type.record,
          accountType: accountType ?? AccountType.personal,
          createdDate: DateTime.now(),
          updatedDate: DateTime.now(),
          isFavorite: false,
          addressLine: "",
          county: "",
          city: "");

  factory Address.create({
    required String name,
    required String addressLine,
    required String county,
    required String city,
    Type? type,
    AccountType? accountType,
    bool? isFavorite,
  }) =>
      Address(
          id: UniqueId(),
          name: Name(name),
          type: type ?? Type.address,
          accountType: accountType ?? AccountType.personal,
          createdDate: DateTime.now(),
          updatedDate: DateTime.now(),
          isFavorite: isFavorite,
          addressLine: addressLine,
          county: county,
          city: city);

  factory Address.update({
    required String name,
    required String addressLine,
    required String county,
    required String city,
    Type? type,
    AccountType? accountType,
    bool? isFavorite,
  }) =>
      Address(
          id: UniqueId(),
          name: Name(name),
          type: type ?? Type.address,
          accountType: accountType ?? AccountType.personal,
          createdDate: DateTime.now(),
          updatedDate: DateTime.now(),
          isFavorite: isFavorite,
          addressLine: addressLine,
          county: county,
          city: city);
}
