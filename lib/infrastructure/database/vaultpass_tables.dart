import 'package:drift/drift.dart';
import 'package:vault_pass/domain/model/types.dart';

@DataClassName('UserEntry')
class UserTable extends Table {
  TextColumn get id => text()();

  TextColumn get firstName => text().withLength(min: 2, max: 32)();

  TextColumn get lastName => text().withLength(min: 2, max: 32)();

  TextColumn get email => text().withLength(min: 5, max: 32)();

  TextColumn get password => text().withLength(min: 5, max: 32)();

  DateTimeColumn get createdDate => dateTime()();

  DateTimeColumn get updatedDate => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('RecordEntry')
class RecordTable extends Table {
  TextColumn get id => text()();

  TextColumn get name => text().withLength(min: 2, max: 32)();

  TextColumn get type => textEnum<Type>()();

  TextColumn get accountType => textEnum<AccountType>()();

  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdDate => dateTime()();

  DateTimeColumn get updatedDate => dateTime()();

  TextColumn get loginRecord => text().withLength(min: 2, max: 32)();

  TextColumn get passwordRecord => text().withLength(min: 2, max: 32)();

  TextColumn get logo => text().withLength(min: 0, max: 50)();

  TextColumn get description => text().nullable()();

  TextColumn get url => text().withLength(min: 2, max: 100)();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('AddressEntry')
class AddressTable extends Table {
  TextColumn get id => text()();

  TextColumn get name => text().withLength(min: 2, max: 32)();

  TextColumn get type => textEnum<Type>()();

  TextColumn get accountType => textEnum<AccountType>()();

  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdDate => dateTime()();

  DateTimeColumn get updatedDate => dateTime()();

  //
  TextColumn get addressLine => text().withLength(min: 2, max: 200)();

  TextColumn get county => text().withLength(min: 2, max: 32)();

  TextColumn get city => text().withLength(min: 2, max: 32)();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('CardEntry')
class CardTable extends Table {
  TextColumn get id => text()();

  TextColumn get name => text().withLength(min: 2, max: 32)();

  TextColumn get type => textEnum<Type>()();

  TextColumn get accountType => textEnum<AccountType>()();

  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdDate => dateTime()();

  DateTimeColumn get updatedDate => dateTime()();

  TextColumn get holderName => text().withLength(min: 2, max: 100)();

  TextColumn get cardNo => text().withLength(min: 2, max: 100)();

  TextColumn get expiryDate => text().withLength(min: 2, max: 5)();

  TextColumn get cvv => text().withLength(min: 3, max: 3)();

  TextColumn get brand => text().withLength(min: 3, max: 50)();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('DocumentEntry')
class DocumentTable extends Table {
  TextColumn get id => text()();

  TextColumn get name => text().withLength(min: 2, max: 32)();

  TextColumn get type => textEnum<Type>()();

  TextColumn get accountType => textEnum<AccountType>()();

  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdDate => dateTime()();

  DateTimeColumn get updatedDate => dateTime()();

  //TODO: this should be saved as json data because its comes as a    required Map<String, String> data, from the dart model.
  TextColumn get data => text().withLength(min: 2, max: 200)();

  TextColumn get details => text().withLength(min: 2, max: 200)();

  @override
  Set<Column> get primaryKey => {id};
}
