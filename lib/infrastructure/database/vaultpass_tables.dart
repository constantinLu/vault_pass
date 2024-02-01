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
