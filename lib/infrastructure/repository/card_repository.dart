import 'package:drift/drift.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';

import '../database/vaultdb.dart';
import '../database/vaultpass_tables.dart';

part 'card_repository.g.dart';

//
// // the _TodosDaoMixin will be created by drift. It contains all the necessary
// // fields for the tables. The <MyDatabase> type annotation is the database class
// // that should use this dao.
//
// class TodosDao extends DatabaseAccessor<MyDatabase> with _$TodosDaoMixin {
//   // this constructor is required so that the main database can create an instance
//   // of this object.
//

@DriftAccessor(tables: [CardTable])
class CardRepository extends DatabaseAccessor<VaultPassDb> with _$CardRepositoryMixin {
  CardRepository() : super(locator<VaultPassDb>());
  //
  // Future<List<Record>> getAll() async {
  //   final cards = await select(cardTable).get();
  //   return CardMapper().toModels(cards);
  // }
  //
  // Future<List<Record>> getByType(AccountType accountType, Type recordType) async {
  //   final cardEntries = await (select(cardTable)
  //         ..where((recordEntity) => recordEntity.accountType.equals(accountType.value) & recordEntity.type.equals(recordType.value)))
  //       .get();
  //   return RecordMapper.toModels(cardEntries);
  // }
  //
  // Future<Record> get(UniqueId recordId) async {
  //   final recordEntry = await (select(cardTable)..where((userEntity) => userEntity.id.equals(recordId.get()))).getSingle();
  //
  //   print("Delay the getUser call");
  //   return Future.delayed(
  //     const Duration(milliseconds: 300),
  //     () => RecordMapper.toModel(recordEntry),
  //   );
  // }
  //
  // Future<Either<ModelFailure, Unit>> add(Record record) async {
  //   try {
  //     var recordMap = RecordMapper.toEntry(record);
  //     await into(cardTable).insert(recordMap);
  //     return Either.right(unit);
  //   } catch (e) {
  //     return Either.left(const ModelFailure.unexpected());
  //   }
  // }
  //
  // Future<Either<ModelFailure, Unit>> updateModel(Record record) async {
  //   try {
  //     final isUpdated = await update(cardTable).replace(RecordMapper.toEntry(record));
  //     return isUpdated ? Either.right(unit) : Either.left(const ModelFailure.unexpected());
  //   } catch (e) {
  //     return Either.left(const ModelFailure.unexpected());
  //   }
  // }
  //
  // Future<Either<ModelFailure, Unit>> remove(UniqueId recordId) async {
  //   try {
  //     await (delete(cardTable)..where((recordEntry) => recordEntry.id.equals(recordId.get()))).go();
  //     return Either.right(unit);
  //   } catch (e) {
  //     return Either.left(const ModelFailure.unexpected());
  //   }
  // }
  //
  // Future<List<Record>> getFavorites() async {
  //   final cardEntries = await (select(cardTable)..where((userEntity) => userEntity.isFavorite.equals(true))).get();
  //   return RecordMapper.toModels(cardEntries);
  // }
  //
  // Future<Either<ModelFailure, bool>> updateFavorites(UniqueId recordId, bool isFavorite) async {
  //   try {
  //     final updated = await db.customUpdate('UPDATE record_table SET is_favorite = ? WHERE id = ?', variables: [
  //       Variable.withBool(isFavorite),
  //       Variable.withString(recordId.get()),
  //     ], updates: {
  //       cardTable
  //     });
  //     return updated == 1 ? Either.right(isFavorite) : Either.left(const ModelFailure.unexpected());
  //   } catch (e) {
  //     return Either.left(const ModelFailure.unexpected());
  //   }
  // }
}
