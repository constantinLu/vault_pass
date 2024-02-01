import 'dart:core';

import 'package:vault_pass/domain/core/export_extension.dart';
import 'package:vault_pass/domain/microtypes/microtypes.dart';
import 'package:vault_pass/domain/model/address.dart';
import 'package:vault_pass/domain/model/card.dart';
import 'package:vault_pass/domain/model/document.dart';
import 'package:vault_pass/domain/model/record.dart';
import 'package:vault_pass/domain/model/user.dart';

import '../../database/vaultdb.dart';

class UserMapper {
  static User toModel(UserEntry userEntry) {
    return User(
        id: UniqueId.fromUniqueString(userEntry.id),
        firstName: Name.of(userEntry.firstName),
        lastName: Name.of(userEntry.lastName),
        emailAddress: EmailAddress.of(userEntry.email),
        password: Password.of(userEntry.password),
        createdDate: userEntry.createdDate,
        updatedDate: userEntry.updatedDate);
  }

  static UserEntry toEntry(User user) {
    return UserEntry(
        id: user.id.value.asRight(),
        firstName: user.firstName.value.asRight(),
        lastName: user.lastName.value.asRight(),
        email: user.emailAddress.value.asRight(),
        password: user.password.value.asRight(),
        createdDate: user.createdDate,
        updatedDate: user.updatedDate);
  }
}

class RecordMapper {
  static Record toModel(RecordEntry recordEntry) {
    return Record(
      id: UniqueId.fromUniqueString(recordEntry.id),
      name: Name.of(recordEntry.name),
      type: recordEntry.type,
      accountType: recordEntry.accountType,
      createdDate: recordEntry.createdDate,
      updatedDate: recordEntry.updatedDate,
      isFavorite: recordEntry.isFavorite,
      loginRecord: Name.of(recordEntry.loginRecord),
      passwordRecord: Password.of(recordEntry.passwordRecord),
      logo: recordEntry.logo,
      description: Description(recordEntry.description!),
      url: Url(recordEntry.url),
    );
  }

  static RecordEntry toEntry(Record record) {
    return RecordEntry(
      id: record.id.get(),
      name: record.name.get(),
      type: record.type,
      accountType: record.accountType,
      createdDate: record.createdDate,
      updatedDate: record.updatedDate,
      isFavorite: record.isFavorite ?? false,
      //
      logo: record.logo,
      loginRecord: record.loginRecord.get(),
      passwordRecord: record.passwordRecord.get(),
      description: record.description.get(),
      url: record.url.get(),
    );
  }

  static List<Record> toModels(List<RecordEntry> recordEntries) {
    return recordEntries.map((element) => toModel(element)).toList();
  }
}

class AddressMapper {
  static Address toModel(AddressEntry addressEntry) {
    return Address(
        id: UniqueId.fromUniqueString(addressEntry.id),
        name: Name.of(addressEntry.name),
        type: addressEntry.type,
        accountType: addressEntry.accountType,
        createdDate: addressEntry.createdDate,
        updatedDate: addressEntry.updatedDate,
        isFavorite: addressEntry.isFavorite,
        addressLine: addressEntry.addressLine,
        county: addressEntry.county,
        city: addressEntry.city);
  }

  static AddressEntry toEntry(Address address) {
    return AddressEntry(
        id: address.id.get(),
        name: address.name.get(),
        type: address.type,
        accountType: address.accountType,
        createdDate: address.createdDate,
        updatedDate: address.updatedDate,
        isFavorite: address.isFavorite ?? false,
        //
        addressLine: address.addressLine,
        county: address.county,
        city: address.city);
  }

  static List<Address> toModels(List<AddressEntry> addressEntries) {
    return addressEntries.map((address) => toModel(address)).toList();
  }
}

class CardMapper {
  static Card toModel(CardEntry cardEntry) {
    return Card(
      id: UniqueId.fromUniqueString(cardEntry.id),
      name: Name.of(cardEntry.name),
      type: cardEntry.type,
      accountType: cardEntry.accountType,
      createdDate: cardEntry.createdDate,
      updatedDate: cardEntry.updatedDate,
      isFavorite: cardEntry.isFavorite,
      //
      holderName: cardEntry.holderName,
      cardNo: cardEntry.cardNo,
      expiryDate: cardEntry.expiryDate,
      cvv: cardEntry.cvv,
      brand: cardEntry.brand,
    );
  }

  static CardEntry toEntry(Card card) {
    return CardEntry(
      id: card.id.get(),
      name: card.name.get(),
      type: card.type,
      accountType: card.accountType,
      createdDate: card.createdDate,
      updatedDate: card.updatedDate,
      isFavorite: card.isFavorite ?? false,
      //
      holderName: card.holderName,
      cardNo: card.cardNo,
      expiryDate: card.expiryDate,
      cvv: card.cvv,
      brand: card.brand,
    );
  }

  static List<Card> toModels(List<CardEntry> cardEntries) {
    return cardEntries.map((element) => toModel(element)).toList();
  }
}

class DocumentMapper {
  static Document toModel(DocumentEntry documentEntry) {
    return Document(
      id: UniqueId.fromUniqueString(documentEntry.id),
      name: Name.of(documentEntry.name),
      type: documentEntry.type,
      accountType: documentEntry.accountType,
      createdDate: documentEntry.createdDate,
      updatedDate: documentEntry.updatedDate,
      isFavorite: documentEntry.isFavorite,
      data: {},
      details: '',
    );
  }

  static DocumentEntry toEntry(Document record) {
    return DocumentEntry(
      id: record.id.get(),
      name: record.name.get(),
      type: record.type,
      accountType: record.accountType,
      createdDate: record.createdDate,
      updatedDate: record.updatedDate,
      isFavorite: record.isFavorite ?? false,
      data: "[]",
      details: '',
      //
    );
  }

  static List<Document> toModels(List<DocumentEntry> documentEntries) {
    return documentEntries.map((element) => toModel(element)).toList();
  }
}
