import 'package:drift/drift.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:vault_pass/domain/failures/model_failures.dart';
import 'package:vault_pass/domain/microtypes/microtypes.dart';
import 'package:vault_pass/domain/model/types.dart';
import 'package:vault_pass/domain/model/user.dart';
import 'package:vault_pass/infrastructure/database/vaultdb.dart';
import 'package:vault_pass/infrastructure/database/vaultpass_tables.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';

import '../../domain/failures/auth_failure.dart';
import 'mapper/repo_mapper.dart';

part 'user_repository.g.dart';

@injectable
@DriftAccessor(tables: [UserTable])
class UserRepository extends DatabaseAccessor<VaultPassDb> with _$UserRepositoryMixin {
  UserRepository() : super(locator<VaultPassDb>());

  Future<User> getUniqueUser() async {
    final user = await select(userTable).getSingle();
    return UserMapper.toModel(user);
  }

  Future<Either<AuthFailure, AuthCredentials>> authenticateUser(EmailAddress emailAddress, Password password) async {
    final UserEntry? userEntry =
        await (select(userTable)..where((userEntity) => userEntity.email.equals(emailAddress.get()))).getSingleOrNull();
    try {
      final authCredentials = AuthCredentials.authCredentials(userEntry!.id, userEntry!.email, AuthState.authorizedCredentials);
      return Either.right(authCredentials);
    } catch (e) {
      return Either.left(const AuthFailure.notAuthorized()); //BAD CREDENTIALS
    }
  }

  Future<User> getUser(UniqueId userId) async {
    final id = UniqueId.toStr(userId);
    final userEntry = await (select(userTable)..where((userEntity) => userEntity.id.equals(id))).getSingle();
    final user = UserMapper.toModel(userEntry);
    print("Delay the getUser call");
    return Future.delayed(
      const Duration(milliseconds: 200),
      () => user,
    );
  }

  Future<Either<UserFailure, Option<User>>> getEitherUser(UniqueId userId) async {
    try {
      final user = await getUser(userId);
      return Either.right(optionOf(user));
    } catch (e) {
      return Either.left(const UserFailure.userFailure());
    }
  }

  Future<Either<AuthFailure, Unit>> addUser(User user) async {
    final userEntry = UserMapper.toEntry(user);
    try {
      await into(userTable).insert(userEntry);

      return Either.right(unit);
    } catch (e) {
      return Either.left(const AuthFailure.notAuthorized());
    }
  }

  Future<Either<UserFailure, Option<User>>> updateUser(User user) async {
    final userEntry = UserMapper.toEntry(user);
    try {
      final updatedUser = await update(userTable).writeReturning(userEntry);
      return Either.right(optionOf(UserMapper.toModel(updatedUser.first)));
    } catch (e) {
      return Either.left(const UserFailure.userFailure());
    }
  }

  //delete a user
  Future<Either<AuthFailure, Unit>> deleteUser(UniqueId userId) async {
    try {
      await (delete(userTable)..where((userEntity) => userEntity.id.equals(userId.get()))).go();

      return Either.right(unit);
    } catch (e) {
      return Either.left(const AuthFailure.notAuthorized());
    }
  }
}
