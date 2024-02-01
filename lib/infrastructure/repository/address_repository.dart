import 'package:drift/drift.dart';
import 'package:fpdart/fpdart.dart';
import 'package:vault_pass/domain/microtypes/microtypes.dart';
import 'package:vault_pass/domain/model/address.dart';
import 'package:vault_pass/domain/model/types.dart';
import 'package:vault_pass/infrastructure/repository/mapper/repo_mapper.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';

import '../../domain/failures/model_failures.dart';
import '../database/vaultdb.dart';
import '../database/vaultpass_tables.dart';

part 'address_repository.g.dart';

//
// // the _TodosDaoMixin will be created by drift. It contains all the necessary
// // fields for the tables. The <MyDatabase> type annotation is the database class
// // that should use this dao.
//
// class TodosDao extends DatabaseAccessor<MyDatabase> with _$TodosDaoMixin {
//   // this constructor is required so that the main database can create an instance
//   // of this object.
//

@DriftAccessor(tables: [AddressTable])
class AddressRepository extends DatabaseAccessor<VaultPassDb> with _$AddressRepositoryMixin {
  AddressRepository() : super(locator<VaultPassDb>());
  //
  // Future<List<Address>> getAll() async {
  //   final addresses = await select(addressTable).get();
  //   return AddressMapper.toModels(addresses);
  // }
  //
  // Future<List<Address>> getByType(AccountType accountType, Type recordType) async {
  //   final addressEntries = await (select(addressTable)
  //         ..where((recordEntity) => recordEntity.accountType.equals(accountType.value) & recordEntity.type.equals(recordType.value)))
  //       .get();
  //   return AddressMapper.toModels(addressEntries);
  // }
  //
  // Future<Address> get(UniqueId recordId) async {
  //   final recordEntry = await (select(addressTable)..where((userEntity) => userEntity.id.equals(recordId.get()))).getSingle();
  //
  //   print("Delay the getUser call");
  //   return Future.delayed(
  //     const Duration(milliseconds: 300),
  //     () => AddressMapper.toModel(recordEntry),
  //   );
  // }
  //
  // Future<Either<ModelFailure, Unit>> add(Address record) async {
  //   try {
  //     var recordMap = AddressMapper.toEntry(record);
  //     await into(addressTable).insert(recordMap);
  //     return Either.right(unit);
  //   } catch (e) {
  //     return Either.left(const ModelFailure.unexpected());
  //   }
  // }
  //
  // Future<Either<ModelFailure, Unit>> updateModel(Address record) async {
  //   try {
  //     final isUpdated = await update(addressTable).replace(AddressMapper.toEntry(record));
  //     return isUpdated ? Either.right(unit) : Either.left(const ModelFailure.unexpected());
  //   } catch (e) {
  //     return Either.left(const ModelFailure.unexpected());
  //   }
  // }
  //
  // Future<Either<ModelFailure, Unit>> remove(UniqueId recordId) async {
  //   try {
  //     await (delete(addressTable)..where((recordEntry) => recordEntry.id.equals(recordId.get()))).go();
  //     return Either.right(unit);
  //   } catch (e) {
  //     return Either.left(const ModelFailure.unexpected());
  //   }
  // }
  //
  // Future<List<Address>> getFavorites() async {
  //   final addressEntries = await (select(addressTable)..where((address) => address.isFavorite.equals(true))).get();
  //   return AddressMapper.toModels(addressEntries);
  // }
  //
  // Future<Either<ModelFailure, bool>> updateFavorites(UniqueId recordId, bool isFavorite) async {
  //   try {
  //     final updated = await db.customUpdate('UPDATE address_table SET is_favorite = ? WHERE id = ?', variables: [
  //       Variable.withBool(isFavorite),
  //       Variable.withString(recordId.get()),
  //     ], updates: {
  //       addressTable
  //     });
  //     return updated == 1 ? Either.right(isFavorite) : Either.left(const ModelFailure.unexpected());
  //   } catch (e) {
  //     return Either.left(const ModelFailure.unexpected());
  //   }
  // }
}
