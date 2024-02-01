import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vault_pass/domain/microtypes/microtypes.dart';

import 'types.dart';

part 'card.freezed.dart';

@freezed
class Card with _$Card {
  factory Card({
    //core
    required UniqueId id,
    required Name name,
    required Type type,
    required AccountType accountType,
    required DateTime createdDate,
    required DateTime updatedDate,
    bool? isFavorite,
    //specific
    required String holderName,
    required String cardNo,
    required String expiryDate,
    required String cvv,
    required String brand,
  }) = _Card;

  factory Card.empty() => Card(
        id: UniqueId.fromUniqueString(""),
        name: Name(""),
        type: Type.record,
        accountType: AccountType.personal,
        createdDate: DateTime.now(),
        updatedDate: DateTime.now(),
        isFavorite: false,
        holderName: "",
        cardNo: "",
        expiryDate: "",
        cvv: "",
        brand: "",
      );

  factory Card.random(
          {required String holderName, required String cardNo, required String expiryDate, Type? recordType, AccountType? accountType}) =>
      Card(
        id: UniqueId(),
        name: Name("SomeName"),
        type: recordType ?? Type.record,
        accountType: accountType ?? AccountType.personal,
        createdDate: DateTime.now(),
        updatedDate: DateTime.now(),
        isFavorite: false,
        holderName: "",
        cardNo: "",
        expiryDate: "",
        cvv: "",
        brand: "",
      );

  factory Card.create({
    required String name,
    required String holderName,
    required String cardNo,
    required String expiryDate,
    required String cvv,
    required String brand,
    Type? type,
    AccountType? accountType,
    bool? isFavorite,
  }) =>
      Card(
        id: UniqueId(),
        name: Name(name),
        type: type ?? Type.card,
        accountType: accountType ?? AccountType.personal,
        createdDate: DateTime.now(),
        updatedDate: DateTime.now(),
        isFavorite: isFavorite,
        holderName: holderName,
        cardNo: cardNo,
        expiryDate: expiryDate,
        cvv: cvv,
        brand: brand,
      );

  factory Card.update({
    required String name,
    required String holderName,
    required String cardNo,
    required String expiryDate,
    required String cvv,
    required String brand,
    Type? type,
    AccountType? accountType,
    bool? isFavorite,
  }) =>
      Card(
        id: UniqueId(),
        name: Name(name),
        type: type ?? Type.card,
        accountType: accountType ?? AccountType.personal,
        createdDate: DateTime.now(),
        updatedDate: DateTime.now(),
        isFavorite: isFavorite,
        holderName: holderName,
        cardNo: cardNo,
        expiryDate: expiryDate,
        cvv: cvv,
        brand: brand,
      );
}
