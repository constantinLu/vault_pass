import 'package:drift/drift.dart';
import 'package:vault_pass/domain/model/types.dart';
import 'package:vault_pass/infrastructure/database/vaultdb.dart';
import 'package:vault_pass/infrastructure/database/vaultpass_tables.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';

part 'db_testdata.g.dart';

@DriftAccessor(tables: [RecordTable, UserTable])
class DbTestData extends DatabaseAccessor<VaultPassDb> with _$DbTestDataMixin {
  DbTestData() : super(locator<VaultPassDb>());

  Future<void> insertTestData() async {
    final user = UserEntry(
        id: "4ed161b5-0d3c-4f06-8381-5f14678e13da",
        firstName: "Constantin",
        lastName: "Lunguu",
        email: "lunguucatalin@gmail.com",
        password: "Twist3r:1",
        createdDate: DateTime.now(),
        updatedDate: DateTime.now());

    await into(userTable).insertOnConflictUpdate(user);

    final account = RecordEntry(
        id: "4ed161b5-0d3c-4f06-8381-5f14678e13dc",
        name: "Google",
        loginRecord: 'google@account.com',
        passwordRecord: "password",
        description: "some account",
        logo: "noLogo",
        type: Type.document,
        accountType: AccountType.personal,
        url: "https://google.account.com",
        isFavorite: false,
        createdDate: DateTime.now(),
        updatedDate: DateTime.now());

    await into(recordTable).insertOnConflictUpdate(account);

    // await batch((batch) {
    //   //USER TABLE
    //   batch.insertAll(userTable, [
    //
    //   ]);
    //
    //   // ADDRESS
    //   batch.insertAll(recordTable, [
    //     RecordTableCompanion.insert(
    //         id: "4ed161b5-0d3c-4f06-8381-5f14678e13db",
    //         recordName: "Iasi Address",
    //         loginRecord: 'no credentials',
    //         passwordRecord: "password",
    //         description: "some address",
    //         logo: "noLogo",
    //         recordType: "Address",
    //         url: "https://gggole.com",
    //         createdDate: DateTime.now(),
    //         updatedDate: DateTime.now()),
    //
    //     /// ACCOUNT
    //     RecordTableCompanion.insert(
    //         id: "4ed161b5-0d3c-4f06-8381-5f14678e13dc",
    //         recordName: "Googlee",
    //         loginRecord: 'google@account.com',
    //         passwordRecord: "password",
    //         description: "some account",
    //         logo: "noLogo",
    //         recordType: "Account",
    //         url: "https://google.account.com",
    //         createdDate: DateTime.now(),
    //         updatedDate: DateTime.now()),
    //
    //     /// Bussiness Account
    //     RecordTableCompanion.insert(
    //         id: "4ed161b5-0d3c-4f06-8381-5f14678e13dad",
    //         recordName: "orangeaccount",
    //         loginRecord: 'lungucatalin@orange.com',
    //         passwordRecord: "password",
    //         description: "some orange account",
    //         logo: "noLogo",
    //         recordType: "Business",
    //         url: "https://orange.com",
    //         createdDate: DateTime.now(),
    //         updatedDate: DateTime.now()),
    //   ]);
    // });
  }
}
