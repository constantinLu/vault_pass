// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaultdb.dart';

// ignore_for_file: type=lint
class $UserTableTable extends UserTable
    with TableInfo<$UserTableTable, UserEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 5, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 5, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<DateTime> updatedDate = GeneratedColumn<DateTime>(
      'updated_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, firstName, lastName, email, password, createdDate, updatedDate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    } else if (isInserting) {
      context.missing(_updatedDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name'])!,
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_date'])!,
    );
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }
}

class UserEntry extends DataClass implements Insertable<UserEntry> {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final DateTime createdDate;
  final DateTime updatedDate;
  const UserEntry(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.createdDate,
      required this.updatedDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    map['email'] = Variable<String>(email);
    map['password'] = Variable<String>(password);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['updated_date'] = Variable<DateTime>(updatedDate);
    return map;
  }

  UserTableCompanion toCompanion(bool nullToAbsent) {
    return UserTableCompanion(
      id: Value(id),
      firstName: Value(firstName),
      lastName: Value(lastName),
      email: Value(email),
      password: Value(password),
      createdDate: Value(createdDate),
      updatedDate: Value(updatedDate),
    );
  }

  factory UserEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserEntry(
      id: serializer.fromJson<String>(json['id']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      updatedDate: serializer.fromJson<DateTime>(json['updatedDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'updatedDate': serializer.toJson<DateTime>(updatedDate),
    };
  }

  UserEntry copyWith(
          {String? id,
          String? firstName,
          String? lastName,
          String? email,
          String? password,
          DateTime? createdDate,
          DateTime? updatedDate}) =>
      UserEntry(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        password: password ?? this.password,
        createdDate: createdDate ?? this.createdDate,
        updatedDate: updatedDate ?? this.updatedDate,
      );
  @override
  String toString() {
    return (StringBuffer('UserEntry(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedDate: $updatedDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, firstName, lastName, email, password, createdDate, updatedDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserEntry &&
          other.id == this.id &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.email == this.email &&
          other.password == this.password &&
          other.createdDate == this.createdDate &&
          other.updatedDate == this.updatedDate);
}

class UserTableCompanion extends UpdateCompanion<UserEntry> {
  final Value<String> id;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String> email;
  final Value<String> password;
  final Value<DateTime> createdDate;
  final Value<DateTime> updatedDate;
  final Value<int> rowid;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.updatedDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserTableCompanion.insert({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required DateTime createdDate,
    required DateTime updatedDate,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        firstName = Value(firstName),
        lastName = Value(lastName),
        email = Value(email),
        password = Value(password),
        createdDate = Value(createdDate),
        updatedDate = Value(updatedDate);
  static Insertable<UserEntry> custom({
    Expression<String>? id,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? email,
    Expression<String>? password,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? updatedDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (createdDate != null) 'created_date': createdDate,
      if (updatedDate != null) 'updated_date': updatedDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? firstName,
      Value<String>? lastName,
      Value<String>? email,
      Value<String>? password,
      Value<DateTime>? createdDate,
      Value<DateTime>? updatedDate,
      Value<int>? rowid}) {
    return UserTableCompanion(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<DateTime>(updatedDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RecordTableTable extends RecordTable
    with TableInfo<$RecordTableTable, RecordEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<Type, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Type>($RecordTableTable.$convertertype);
  static const VerificationMeta _accountTypeMeta =
      const VerificationMeta('accountType');
  @override
  late final GeneratedColumnWithTypeConverter<AccountType, String> accountType =
      GeneratedColumn<String>('account_type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<AccountType>($RecordTableTable.$converteraccountType);
  static const VerificationMeta _isFavoriteMeta =
      const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
      'is_favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_favorite" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<DateTime> updatedDate = GeneratedColumn<DateTime>(
      'updated_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _loginRecordMeta =
      const VerificationMeta('loginRecord');
  @override
  late final GeneratedColumn<String> loginRecord = GeneratedColumn<String>(
      'login_record', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _passwordRecordMeta =
      const VerificationMeta('passwordRecord');
  @override
  late final GeneratedColumn<String> passwordRecord = GeneratedColumn<String>(
      'password_record', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _logoMeta = const VerificationMeta('logo');
  @override
  late final GeneratedColumn<String> logo = GeneratedColumn<String>(
      'logo', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        type,
        accountType,
        isFavorite,
        createdDate,
        updatedDate,
        loginRecord,
        passwordRecord,
        logo,
        description,
        url
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_table';
  @override
  VerificationContext validateIntegrity(Insertable<RecordEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    context.handle(_accountTypeMeta, const VerificationResult.success());
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    } else if (isInserting) {
      context.missing(_updatedDateMeta);
    }
    if (data.containsKey('login_record')) {
      context.handle(
          _loginRecordMeta,
          loginRecord.isAcceptableOrUnknown(
              data['login_record']!, _loginRecordMeta));
    } else if (isInserting) {
      context.missing(_loginRecordMeta);
    }
    if (data.containsKey('password_record')) {
      context.handle(
          _passwordRecordMeta,
          passwordRecord.isAcceptableOrUnknown(
              data['password_record']!, _passwordRecordMeta));
    } else if (isInserting) {
      context.missing(_passwordRecordMeta);
    }
    if (data.containsKey('logo')) {
      context.handle(
          _logoMeta, logo.isAcceptableOrUnknown(data['logo']!, _logoMeta));
    } else if (isInserting) {
      context.missing(_logoMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      type: $RecordTableTable.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      accountType: $RecordTableTable.$converteraccountType.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}account_type'])!),
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_date'])!,
      loginRecord: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}login_record'])!,
      passwordRecord: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}password_record'])!,
      logo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}logo'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
    );
  }

  @override
  $RecordTableTable createAlias(String alias) {
    return $RecordTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Type, String, String> $convertertype =
      const EnumNameConverter<Type>(Type.values);
  static JsonTypeConverter2<AccountType, String, String> $converteraccountType =
      const EnumNameConverter<AccountType>(AccountType.values);
}

class RecordEntry extends DataClass implements Insertable<RecordEntry> {
  final String id;
  final String name;
  final Type type;
  final AccountType accountType;
  final bool isFavorite;
  final DateTime createdDate;
  final DateTime updatedDate;
  final String loginRecord;
  final String passwordRecord;
  final String logo;
  final String? description;
  final String url;
  const RecordEntry(
      {required this.id,
      required this.name,
      required this.type,
      required this.accountType,
      required this.isFavorite,
      required this.createdDate,
      required this.updatedDate,
      required this.loginRecord,
      required this.passwordRecord,
      required this.logo,
      this.description,
      required this.url});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    {
      final converter = $RecordTableTable.$convertertype;
      map['type'] = Variable<String>(converter.toSql(type));
    }
    {
      final converter = $RecordTableTable.$converteraccountType;
      map['account_type'] = Variable<String>(converter.toSql(accountType));
    }
    map['is_favorite'] = Variable<bool>(isFavorite);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['updated_date'] = Variable<DateTime>(updatedDate);
    map['login_record'] = Variable<String>(loginRecord);
    map['password_record'] = Variable<String>(passwordRecord);
    map['logo'] = Variable<String>(logo);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['url'] = Variable<String>(url);
    return map;
  }

  RecordTableCompanion toCompanion(bool nullToAbsent) {
    return RecordTableCompanion(
      id: Value(id),
      name: Value(name),
      type: Value(type),
      accountType: Value(accountType),
      isFavorite: Value(isFavorite),
      createdDate: Value(createdDate),
      updatedDate: Value(updatedDate),
      loginRecord: Value(loginRecord),
      passwordRecord: Value(passwordRecord),
      logo: Value(logo),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      url: Value(url),
    );
  }

  factory RecordEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordEntry(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      type: $RecordTableTable.$convertertype
          .fromJson(serializer.fromJson<String>(json['type'])),
      accountType: $RecordTableTable.$converteraccountType
          .fromJson(serializer.fromJson<String>(json['accountType'])),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      updatedDate: serializer.fromJson<DateTime>(json['updatedDate']),
      loginRecord: serializer.fromJson<String>(json['loginRecord']),
      passwordRecord: serializer.fromJson<String>(json['passwordRecord']),
      logo: serializer.fromJson<String>(json['logo']),
      description: serializer.fromJson<String?>(json['description']),
      url: serializer.fromJson<String>(json['url']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'type': serializer
          .toJson<String>($RecordTableTable.$convertertype.toJson(type)),
      'accountType': serializer.toJson<String>(
          $RecordTableTable.$converteraccountType.toJson(accountType)),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'updatedDate': serializer.toJson<DateTime>(updatedDate),
      'loginRecord': serializer.toJson<String>(loginRecord),
      'passwordRecord': serializer.toJson<String>(passwordRecord),
      'logo': serializer.toJson<String>(logo),
      'description': serializer.toJson<String?>(description),
      'url': serializer.toJson<String>(url),
    };
  }

  RecordEntry copyWith(
          {String? id,
          String? name,
          Type? type,
          AccountType? accountType,
          bool? isFavorite,
          DateTime? createdDate,
          DateTime? updatedDate,
          String? loginRecord,
          String? passwordRecord,
          String? logo,
          Value<String?> description = const Value.absent(),
          String? url}) =>
      RecordEntry(
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        accountType: accountType ?? this.accountType,
        isFavorite: isFavorite ?? this.isFavorite,
        createdDate: createdDate ?? this.createdDate,
        updatedDate: updatedDate ?? this.updatedDate,
        loginRecord: loginRecord ?? this.loginRecord,
        passwordRecord: passwordRecord ?? this.passwordRecord,
        logo: logo ?? this.logo,
        description: description.present ? description.value : this.description,
        url: url ?? this.url,
      );
  @override
  String toString() {
    return (StringBuffer('RecordEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('accountType: $accountType, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('loginRecord: $loginRecord, ')
          ..write('passwordRecord: $passwordRecord, ')
          ..write('logo: $logo, ')
          ..write('description: $description, ')
          ..write('url: $url')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      type,
      accountType,
      isFavorite,
      createdDate,
      updatedDate,
      loginRecord,
      passwordRecord,
      logo,
      description,
      url);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type &&
          other.accountType == this.accountType &&
          other.isFavorite == this.isFavorite &&
          other.createdDate == this.createdDate &&
          other.updatedDate == this.updatedDate &&
          other.loginRecord == this.loginRecord &&
          other.passwordRecord == this.passwordRecord &&
          other.logo == this.logo &&
          other.description == this.description &&
          other.url == this.url);
}

class RecordTableCompanion extends UpdateCompanion<RecordEntry> {
  final Value<String> id;
  final Value<String> name;
  final Value<Type> type;
  final Value<AccountType> accountType;
  final Value<bool> isFavorite;
  final Value<DateTime> createdDate;
  final Value<DateTime> updatedDate;
  final Value<String> loginRecord;
  final Value<String> passwordRecord;
  final Value<String> logo;
  final Value<String?> description;
  final Value<String> url;
  final Value<int> rowid;
  const RecordTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.accountType = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.updatedDate = const Value.absent(),
    this.loginRecord = const Value.absent(),
    this.passwordRecord = const Value.absent(),
    this.logo = const Value.absent(),
    this.description = const Value.absent(),
    this.url = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecordTableCompanion.insert({
    required String id,
    required String name,
    required Type type,
    required AccountType accountType,
    this.isFavorite = const Value.absent(),
    required DateTime createdDate,
    required DateTime updatedDate,
    required String loginRecord,
    required String passwordRecord,
    required String logo,
    this.description = const Value.absent(),
    required String url,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        type = Value(type),
        accountType = Value(accountType),
        createdDate = Value(createdDate),
        updatedDate = Value(updatedDate),
        loginRecord = Value(loginRecord),
        passwordRecord = Value(passwordRecord),
        logo = Value(logo),
        url = Value(url);
  static Insertable<RecordEntry> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? accountType,
    Expression<bool>? isFavorite,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? updatedDate,
    Expression<String>? loginRecord,
    Expression<String>? passwordRecord,
    Expression<String>? logo,
    Expression<String>? description,
    Expression<String>? url,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (accountType != null) 'account_type': accountType,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (createdDate != null) 'created_date': createdDate,
      if (updatedDate != null) 'updated_date': updatedDate,
      if (loginRecord != null) 'login_record': loginRecord,
      if (passwordRecord != null) 'password_record': passwordRecord,
      if (logo != null) 'logo': logo,
      if (description != null) 'description': description,
      if (url != null) 'url': url,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecordTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<Type>? type,
      Value<AccountType>? accountType,
      Value<bool>? isFavorite,
      Value<DateTime>? createdDate,
      Value<DateTime>? updatedDate,
      Value<String>? loginRecord,
      Value<String>? passwordRecord,
      Value<String>? logo,
      Value<String?>? description,
      Value<String>? url,
      Value<int>? rowid}) {
    return RecordTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      accountType: accountType ?? this.accountType,
      isFavorite: isFavorite ?? this.isFavorite,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
      loginRecord: loginRecord ?? this.loginRecord,
      passwordRecord: passwordRecord ?? this.passwordRecord,
      logo: logo ?? this.logo,
      description: description ?? this.description,
      url: url ?? this.url,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      final converter = $RecordTableTable.$convertertype;

      map['type'] = Variable<String>(converter.toSql(type.value));
    }
    if (accountType.present) {
      final converter = $RecordTableTable.$converteraccountType;

      map['account_type'] =
          Variable<String>(converter.toSql(accountType.value));
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<DateTime>(updatedDate.value);
    }
    if (loginRecord.present) {
      map['login_record'] = Variable<String>(loginRecord.value);
    }
    if (passwordRecord.present) {
      map['password_record'] = Variable<String>(passwordRecord.value);
    }
    if (logo.present) {
      map['logo'] = Variable<String>(logo.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('accountType: $accountType, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('loginRecord: $loginRecord, ')
          ..write('passwordRecord: $passwordRecord, ')
          ..write('logo: $logo, ')
          ..write('description: $description, ')
          ..write('url: $url, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AddressTableTable extends AddressTable
    with TableInfo<$AddressTableTable, AddressEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AddressTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<Type, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Type>($AddressTableTable.$convertertype);
  static const VerificationMeta _accountTypeMeta =
      const VerificationMeta('accountType');
  @override
  late final GeneratedColumnWithTypeConverter<AccountType, String> accountType =
      GeneratedColumn<String>('account_type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<AccountType>($AddressTableTable.$converteraccountType);
  static const VerificationMeta _isFavoriteMeta =
      const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
      'is_favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_favorite" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<DateTime> updatedDate = GeneratedColumn<DateTime>(
      'updated_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _addressLineMeta =
      const VerificationMeta('addressLine');
  @override
  late final GeneratedColumn<String> addressLine = GeneratedColumn<String>(
      'address_line', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 200),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _countyMeta = const VerificationMeta('county');
  @override
  late final GeneratedColumn<String> county = GeneratedColumn<String>(
      'county', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        type,
        accountType,
        isFavorite,
        createdDate,
        updatedDate,
        addressLine,
        county,
        city
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'address_table';
  @override
  VerificationContext validateIntegrity(Insertable<AddressEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    context.handle(_accountTypeMeta, const VerificationResult.success());
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    } else if (isInserting) {
      context.missing(_updatedDateMeta);
    }
    if (data.containsKey('address_line')) {
      context.handle(
          _addressLineMeta,
          addressLine.isAcceptableOrUnknown(
              data['address_line']!, _addressLineMeta));
    } else if (isInserting) {
      context.missing(_addressLineMeta);
    }
    if (data.containsKey('county')) {
      context.handle(_countyMeta,
          county.isAcceptableOrUnknown(data['county']!, _countyMeta));
    } else if (isInserting) {
      context.missing(_countyMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AddressEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AddressEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      type: $AddressTableTable.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      accountType: $AddressTableTable.$converteraccountType.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}account_type'])!),
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_date'])!,
      addressLine: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address_line'])!,
      county: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}county'])!,
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city'])!,
    );
  }

  @override
  $AddressTableTable createAlias(String alias) {
    return $AddressTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Type, String, String> $convertertype =
      const EnumNameConverter<Type>(Type.values);
  static JsonTypeConverter2<AccountType, String, String> $converteraccountType =
      const EnumNameConverter<AccountType>(AccountType.values);
}

class AddressEntry extends DataClass implements Insertable<AddressEntry> {
  final String id;
  final String name;
  final Type type;
  final AccountType accountType;
  final bool isFavorite;
  final DateTime createdDate;
  final DateTime updatedDate;
  final String addressLine;
  final String county;
  final String city;
  const AddressEntry(
      {required this.id,
      required this.name,
      required this.type,
      required this.accountType,
      required this.isFavorite,
      required this.createdDate,
      required this.updatedDate,
      required this.addressLine,
      required this.county,
      required this.city});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    {
      final converter = $AddressTableTable.$convertertype;
      map['type'] = Variable<String>(converter.toSql(type));
    }
    {
      final converter = $AddressTableTable.$converteraccountType;
      map['account_type'] = Variable<String>(converter.toSql(accountType));
    }
    map['is_favorite'] = Variable<bool>(isFavorite);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['updated_date'] = Variable<DateTime>(updatedDate);
    map['address_line'] = Variable<String>(addressLine);
    map['county'] = Variable<String>(county);
    map['city'] = Variable<String>(city);
    return map;
  }

  AddressTableCompanion toCompanion(bool nullToAbsent) {
    return AddressTableCompanion(
      id: Value(id),
      name: Value(name),
      type: Value(type),
      accountType: Value(accountType),
      isFavorite: Value(isFavorite),
      createdDate: Value(createdDate),
      updatedDate: Value(updatedDate),
      addressLine: Value(addressLine),
      county: Value(county),
      city: Value(city),
    );
  }

  factory AddressEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AddressEntry(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      type: $AddressTableTable.$convertertype
          .fromJson(serializer.fromJson<String>(json['type'])),
      accountType: $AddressTableTable.$converteraccountType
          .fromJson(serializer.fromJson<String>(json['accountType'])),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      updatedDate: serializer.fromJson<DateTime>(json['updatedDate']),
      addressLine: serializer.fromJson<String>(json['addressLine']),
      county: serializer.fromJson<String>(json['county']),
      city: serializer.fromJson<String>(json['city']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'type': serializer
          .toJson<String>($AddressTableTable.$convertertype.toJson(type)),
      'accountType': serializer.toJson<String>(
          $AddressTableTable.$converteraccountType.toJson(accountType)),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'updatedDate': serializer.toJson<DateTime>(updatedDate),
      'addressLine': serializer.toJson<String>(addressLine),
      'county': serializer.toJson<String>(county),
      'city': serializer.toJson<String>(city),
    };
  }

  AddressEntry copyWith(
          {String? id,
          String? name,
          Type? type,
          AccountType? accountType,
          bool? isFavorite,
          DateTime? createdDate,
          DateTime? updatedDate,
          String? addressLine,
          String? county,
          String? city}) =>
      AddressEntry(
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        accountType: accountType ?? this.accountType,
        isFavorite: isFavorite ?? this.isFavorite,
        createdDate: createdDate ?? this.createdDate,
        updatedDate: updatedDate ?? this.updatedDate,
        addressLine: addressLine ?? this.addressLine,
        county: county ?? this.county,
        city: city ?? this.city,
      );
  @override
  String toString() {
    return (StringBuffer('AddressEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('accountType: $accountType, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('addressLine: $addressLine, ')
          ..write('county: $county, ')
          ..write('city: $city')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, type, accountType, isFavorite,
      createdDate, updatedDate, addressLine, county, city);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddressEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type &&
          other.accountType == this.accountType &&
          other.isFavorite == this.isFavorite &&
          other.createdDate == this.createdDate &&
          other.updatedDate == this.updatedDate &&
          other.addressLine == this.addressLine &&
          other.county == this.county &&
          other.city == this.city);
}

class AddressTableCompanion extends UpdateCompanion<AddressEntry> {
  final Value<String> id;
  final Value<String> name;
  final Value<Type> type;
  final Value<AccountType> accountType;
  final Value<bool> isFavorite;
  final Value<DateTime> createdDate;
  final Value<DateTime> updatedDate;
  final Value<String> addressLine;
  final Value<String> county;
  final Value<String> city;
  final Value<int> rowid;
  const AddressTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.accountType = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.updatedDate = const Value.absent(),
    this.addressLine = const Value.absent(),
    this.county = const Value.absent(),
    this.city = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AddressTableCompanion.insert({
    required String id,
    required String name,
    required Type type,
    required AccountType accountType,
    this.isFavorite = const Value.absent(),
    required DateTime createdDate,
    required DateTime updatedDate,
    required String addressLine,
    required String county,
    required String city,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        type = Value(type),
        accountType = Value(accountType),
        createdDate = Value(createdDate),
        updatedDate = Value(updatedDate),
        addressLine = Value(addressLine),
        county = Value(county),
        city = Value(city);
  static Insertable<AddressEntry> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? accountType,
    Expression<bool>? isFavorite,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? updatedDate,
    Expression<String>? addressLine,
    Expression<String>? county,
    Expression<String>? city,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (accountType != null) 'account_type': accountType,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (createdDate != null) 'created_date': createdDate,
      if (updatedDate != null) 'updated_date': updatedDate,
      if (addressLine != null) 'address_line': addressLine,
      if (county != null) 'county': county,
      if (city != null) 'city': city,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AddressTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<Type>? type,
      Value<AccountType>? accountType,
      Value<bool>? isFavorite,
      Value<DateTime>? createdDate,
      Value<DateTime>? updatedDate,
      Value<String>? addressLine,
      Value<String>? county,
      Value<String>? city,
      Value<int>? rowid}) {
    return AddressTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      accountType: accountType ?? this.accountType,
      isFavorite: isFavorite ?? this.isFavorite,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
      addressLine: addressLine ?? this.addressLine,
      county: county ?? this.county,
      city: city ?? this.city,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      final converter = $AddressTableTable.$convertertype;

      map['type'] = Variable<String>(converter.toSql(type.value));
    }
    if (accountType.present) {
      final converter = $AddressTableTable.$converteraccountType;

      map['account_type'] =
          Variable<String>(converter.toSql(accountType.value));
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<DateTime>(updatedDate.value);
    }
    if (addressLine.present) {
      map['address_line'] = Variable<String>(addressLine.value);
    }
    if (county.present) {
      map['county'] = Variable<String>(county.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('accountType: $accountType, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('addressLine: $addressLine, ')
          ..write('county: $county, ')
          ..write('city: $city, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CardTableTable extends CardTable
    with TableInfo<$CardTableTable, CardEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CardTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<Type, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Type>($CardTableTable.$convertertype);
  static const VerificationMeta _accountTypeMeta =
      const VerificationMeta('accountType');
  @override
  late final GeneratedColumnWithTypeConverter<AccountType, String> accountType =
      GeneratedColumn<String>('account_type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<AccountType>($CardTableTable.$converteraccountType);
  static const VerificationMeta _isFavoriteMeta =
      const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
      'is_favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_favorite" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<DateTime> updatedDate = GeneratedColumn<DateTime>(
      'updated_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _holderNameMeta =
      const VerificationMeta('holderName');
  @override
  late final GeneratedColumn<String> holderName = GeneratedColumn<String>(
      'holder_name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _cardNoMeta = const VerificationMeta('cardNo');
  @override
  late final GeneratedColumn<String> cardNo = GeneratedColumn<String>(
      'card_no', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _expiryDateMeta =
      const VerificationMeta('expiryDate');
  @override
  late final GeneratedColumn<String> expiryDate = GeneratedColumn<String>(
      'expiry_date', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 5),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _cvvMeta = const VerificationMeta('cvv');
  @override
  late final GeneratedColumn<String> cvv = GeneratedColumn<String>(
      'cvv', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 3),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
      'brand', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        type,
        accountType,
        isFavorite,
        createdDate,
        updatedDate,
        holderName,
        cardNo,
        expiryDate,
        cvv,
        brand
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'card_table';
  @override
  VerificationContext validateIntegrity(Insertable<CardEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    context.handle(_accountTypeMeta, const VerificationResult.success());
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    } else if (isInserting) {
      context.missing(_updatedDateMeta);
    }
    if (data.containsKey('holder_name')) {
      context.handle(
          _holderNameMeta,
          holderName.isAcceptableOrUnknown(
              data['holder_name']!, _holderNameMeta));
    } else if (isInserting) {
      context.missing(_holderNameMeta);
    }
    if (data.containsKey('card_no')) {
      context.handle(_cardNoMeta,
          cardNo.isAcceptableOrUnknown(data['card_no']!, _cardNoMeta));
    } else if (isInserting) {
      context.missing(_cardNoMeta);
    }
    if (data.containsKey('expiry_date')) {
      context.handle(
          _expiryDateMeta,
          expiryDate.isAcceptableOrUnknown(
              data['expiry_date']!, _expiryDateMeta));
    } else if (isInserting) {
      context.missing(_expiryDateMeta);
    }
    if (data.containsKey('cvv')) {
      context.handle(
          _cvvMeta, cvv.isAcceptableOrUnknown(data['cvv']!, _cvvMeta));
    } else if (isInserting) {
      context.missing(_cvvMeta);
    }
    if (data.containsKey('brand')) {
      context.handle(
          _brandMeta, brand.isAcceptableOrUnknown(data['brand']!, _brandMeta));
    } else if (isInserting) {
      context.missing(_brandMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CardEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CardEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      type: $CardTableTable.$convertertype.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      accountType: $CardTableTable.$converteraccountType.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}account_type'])!),
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_date'])!,
      holderName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}holder_name'])!,
      cardNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}card_no'])!,
      expiryDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}expiry_date'])!,
      cvv: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cvv'])!,
      brand: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}brand'])!,
    );
  }

  @override
  $CardTableTable createAlias(String alias) {
    return $CardTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Type, String, String> $convertertype =
      const EnumNameConverter<Type>(Type.values);
  static JsonTypeConverter2<AccountType, String, String> $converteraccountType =
      const EnumNameConverter<AccountType>(AccountType.values);
}

class CardEntry extends DataClass implements Insertable<CardEntry> {
  final String id;
  final String name;
  final Type type;
  final AccountType accountType;
  final bool isFavorite;
  final DateTime createdDate;
  final DateTime updatedDate;
  final String holderName;
  final String cardNo;
  final String expiryDate;
  final String cvv;
  final String brand;
  const CardEntry(
      {required this.id,
      required this.name,
      required this.type,
      required this.accountType,
      required this.isFavorite,
      required this.createdDate,
      required this.updatedDate,
      required this.holderName,
      required this.cardNo,
      required this.expiryDate,
      required this.cvv,
      required this.brand});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    {
      final converter = $CardTableTable.$convertertype;
      map['type'] = Variable<String>(converter.toSql(type));
    }
    {
      final converter = $CardTableTable.$converteraccountType;
      map['account_type'] = Variable<String>(converter.toSql(accountType));
    }
    map['is_favorite'] = Variable<bool>(isFavorite);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['updated_date'] = Variable<DateTime>(updatedDate);
    map['holder_name'] = Variable<String>(holderName);
    map['card_no'] = Variable<String>(cardNo);
    map['expiry_date'] = Variable<String>(expiryDate);
    map['cvv'] = Variable<String>(cvv);
    map['brand'] = Variable<String>(brand);
    return map;
  }

  CardTableCompanion toCompanion(bool nullToAbsent) {
    return CardTableCompanion(
      id: Value(id),
      name: Value(name),
      type: Value(type),
      accountType: Value(accountType),
      isFavorite: Value(isFavorite),
      createdDate: Value(createdDate),
      updatedDate: Value(updatedDate),
      holderName: Value(holderName),
      cardNo: Value(cardNo),
      expiryDate: Value(expiryDate),
      cvv: Value(cvv),
      brand: Value(brand),
    );
  }

  factory CardEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CardEntry(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      type: $CardTableTable.$convertertype
          .fromJson(serializer.fromJson<String>(json['type'])),
      accountType: $CardTableTable.$converteraccountType
          .fromJson(serializer.fromJson<String>(json['accountType'])),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      updatedDate: serializer.fromJson<DateTime>(json['updatedDate']),
      holderName: serializer.fromJson<String>(json['holderName']),
      cardNo: serializer.fromJson<String>(json['cardNo']),
      expiryDate: serializer.fromJson<String>(json['expiryDate']),
      cvv: serializer.fromJson<String>(json['cvv']),
      brand: serializer.fromJson<String>(json['brand']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'type': serializer
          .toJson<String>($CardTableTable.$convertertype.toJson(type)),
      'accountType': serializer.toJson<String>(
          $CardTableTable.$converteraccountType.toJson(accountType)),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'updatedDate': serializer.toJson<DateTime>(updatedDate),
      'holderName': serializer.toJson<String>(holderName),
      'cardNo': serializer.toJson<String>(cardNo),
      'expiryDate': serializer.toJson<String>(expiryDate),
      'cvv': serializer.toJson<String>(cvv),
      'brand': serializer.toJson<String>(brand),
    };
  }

  CardEntry copyWith(
          {String? id,
          String? name,
          Type? type,
          AccountType? accountType,
          bool? isFavorite,
          DateTime? createdDate,
          DateTime? updatedDate,
          String? holderName,
          String? cardNo,
          String? expiryDate,
          String? cvv,
          String? brand}) =>
      CardEntry(
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        accountType: accountType ?? this.accountType,
        isFavorite: isFavorite ?? this.isFavorite,
        createdDate: createdDate ?? this.createdDate,
        updatedDate: updatedDate ?? this.updatedDate,
        holderName: holderName ?? this.holderName,
        cardNo: cardNo ?? this.cardNo,
        expiryDate: expiryDate ?? this.expiryDate,
        cvv: cvv ?? this.cvv,
        brand: brand ?? this.brand,
      );
  @override
  String toString() {
    return (StringBuffer('CardEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('accountType: $accountType, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('holderName: $holderName, ')
          ..write('cardNo: $cardNo, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('cvv: $cvv, ')
          ..write('brand: $brand')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, type, accountType, isFavorite,
      createdDate, updatedDate, holderName, cardNo, expiryDate, cvv, brand);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CardEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type &&
          other.accountType == this.accountType &&
          other.isFavorite == this.isFavorite &&
          other.createdDate == this.createdDate &&
          other.updatedDate == this.updatedDate &&
          other.holderName == this.holderName &&
          other.cardNo == this.cardNo &&
          other.expiryDate == this.expiryDate &&
          other.cvv == this.cvv &&
          other.brand == this.brand);
}

class CardTableCompanion extends UpdateCompanion<CardEntry> {
  final Value<String> id;
  final Value<String> name;
  final Value<Type> type;
  final Value<AccountType> accountType;
  final Value<bool> isFavorite;
  final Value<DateTime> createdDate;
  final Value<DateTime> updatedDate;
  final Value<String> holderName;
  final Value<String> cardNo;
  final Value<String> expiryDate;
  final Value<String> cvv;
  final Value<String> brand;
  final Value<int> rowid;
  const CardTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.accountType = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.updatedDate = const Value.absent(),
    this.holderName = const Value.absent(),
    this.cardNo = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.cvv = const Value.absent(),
    this.brand = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CardTableCompanion.insert({
    required String id,
    required String name,
    required Type type,
    required AccountType accountType,
    this.isFavorite = const Value.absent(),
    required DateTime createdDate,
    required DateTime updatedDate,
    required String holderName,
    required String cardNo,
    required String expiryDate,
    required String cvv,
    required String brand,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        type = Value(type),
        accountType = Value(accountType),
        createdDate = Value(createdDate),
        updatedDate = Value(updatedDate),
        holderName = Value(holderName),
        cardNo = Value(cardNo),
        expiryDate = Value(expiryDate),
        cvv = Value(cvv),
        brand = Value(brand);
  static Insertable<CardEntry> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? accountType,
    Expression<bool>? isFavorite,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? updatedDate,
    Expression<String>? holderName,
    Expression<String>? cardNo,
    Expression<String>? expiryDate,
    Expression<String>? cvv,
    Expression<String>? brand,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (accountType != null) 'account_type': accountType,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (createdDate != null) 'created_date': createdDate,
      if (updatedDate != null) 'updated_date': updatedDate,
      if (holderName != null) 'holder_name': holderName,
      if (cardNo != null) 'card_no': cardNo,
      if (expiryDate != null) 'expiry_date': expiryDate,
      if (cvv != null) 'cvv': cvv,
      if (brand != null) 'brand': brand,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CardTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<Type>? type,
      Value<AccountType>? accountType,
      Value<bool>? isFavorite,
      Value<DateTime>? createdDate,
      Value<DateTime>? updatedDate,
      Value<String>? holderName,
      Value<String>? cardNo,
      Value<String>? expiryDate,
      Value<String>? cvv,
      Value<String>? brand,
      Value<int>? rowid}) {
    return CardTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      accountType: accountType ?? this.accountType,
      isFavorite: isFavorite ?? this.isFavorite,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
      holderName: holderName ?? this.holderName,
      cardNo: cardNo ?? this.cardNo,
      expiryDate: expiryDate ?? this.expiryDate,
      cvv: cvv ?? this.cvv,
      brand: brand ?? this.brand,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      final converter = $CardTableTable.$convertertype;

      map['type'] = Variable<String>(converter.toSql(type.value));
    }
    if (accountType.present) {
      final converter = $CardTableTable.$converteraccountType;

      map['account_type'] =
          Variable<String>(converter.toSql(accountType.value));
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<DateTime>(updatedDate.value);
    }
    if (holderName.present) {
      map['holder_name'] = Variable<String>(holderName.value);
    }
    if (cardNo.present) {
      map['card_no'] = Variable<String>(cardNo.value);
    }
    if (expiryDate.present) {
      map['expiry_date'] = Variable<String>(expiryDate.value);
    }
    if (cvv.present) {
      map['cvv'] = Variable<String>(cvv.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CardTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('accountType: $accountType, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('holderName: $holderName, ')
          ..write('cardNo: $cardNo, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('cvv: $cvv, ')
          ..write('brand: $brand, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DocumentTableTable extends DocumentTable
    with TableInfo<$DocumentTableTable, DocumentEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DocumentTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<Type, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Type>($DocumentTableTable.$convertertype);
  static const VerificationMeta _accountTypeMeta =
      const VerificationMeta('accountType');
  @override
  late final GeneratedColumnWithTypeConverter<AccountType, String> accountType =
      GeneratedColumn<String>('account_type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<AccountType>(
              $DocumentTableTable.$converteraccountType);
  static const VerificationMeta _isFavoriteMeta =
      const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
      'is_favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_favorite" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<DateTime> updatedDate = GeneratedColumn<DateTime>(
      'updated_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<String> data = GeneratedColumn<String>(
      'data', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 200),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _detailsMeta =
      const VerificationMeta('details');
  @override
  late final GeneratedColumn<String> details = GeneratedColumn<String>(
      'details', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 200),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        type,
        accountType,
        isFavorite,
        createdDate,
        updatedDate,
        data,
        details
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'document_table';
  @override
  VerificationContext validateIntegrity(Insertable<DocumentEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    context.handle(_accountTypeMeta, const VerificationResult.success());
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    } else if (isInserting) {
      context.missing(_updatedDateMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data']!, _dataMeta));
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    if (data.containsKey('details')) {
      context.handle(_detailsMeta,
          details.isAcceptableOrUnknown(data['details']!, _detailsMeta));
    } else if (isInserting) {
      context.missing(_detailsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DocumentEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DocumentEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      type: $DocumentTableTable.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      accountType: $DocumentTableTable.$converteraccountType.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}account_type'])!),
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_date'])!,
      data: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data'])!,
      details: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}details'])!,
    );
  }

  @override
  $DocumentTableTable createAlias(String alias) {
    return $DocumentTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Type, String, String> $convertertype =
      const EnumNameConverter<Type>(Type.values);
  static JsonTypeConverter2<AccountType, String, String> $converteraccountType =
      const EnumNameConverter<AccountType>(AccountType.values);
}

class DocumentEntry extends DataClass implements Insertable<DocumentEntry> {
  final String id;
  final String name;
  final Type type;
  final AccountType accountType;
  final bool isFavorite;
  final DateTime createdDate;
  final DateTime updatedDate;
  final String data;
  final String details;
  const DocumentEntry(
      {required this.id,
      required this.name,
      required this.type,
      required this.accountType,
      required this.isFavorite,
      required this.createdDate,
      required this.updatedDate,
      required this.data,
      required this.details});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    {
      final converter = $DocumentTableTable.$convertertype;
      map['type'] = Variable<String>(converter.toSql(type));
    }
    {
      final converter = $DocumentTableTable.$converteraccountType;
      map['account_type'] = Variable<String>(converter.toSql(accountType));
    }
    map['is_favorite'] = Variable<bool>(isFavorite);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['updated_date'] = Variable<DateTime>(updatedDate);
    map['data'] = Variable<String>(data);
    map['details'] = Variable<String>(details);
    return map;
  }

  DocumentTableCompanion toCompanion(bool nullToAbsent) {
    return DocumentTableCompanion(
      id: Value(id),
      name: Value(name),
      type: Value(type),
      accountType: Value(accountType),
      isFavorite: Value(isFavorite),
      createdDate: Value(createdDate),
      updatedDate: Value(updatedDate),
      data: Value(data),
      details: Value(details),
    );
  }

  factory DocumentEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DocumentEntry(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      type: $DocumentTableTable.$convertertype
          .fromJson(serializer.fromJson<String>(json['type'])),
      accountType: $DocumentTableTable.$converteraccountType
          .fromJson(serializer.fromJson<String>(json['accountType'])),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      updatedDate: serializer.fromJson<DateTime>(json['updatedDate']),
      data: serializer.fromJson<String>(json['data']),
      details: serializer.fromJson<String>(json['details']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'type': serializer
          .toJson<String>($DocumentTableTable.$convertertype.toJson(type)),
      'accountType': serializer.toJson<String>(
          $DocumentTableTable.$converteraccountType.toJson(accountType)),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'updatedDate': serializer.toJson<DateTime>(updatedDate),
      'data': serializer.toJson<String>(data),
      'details': serializer.toJson<String>(details),
    };
  }

  DocumentEntry copyWith(
          {String? id,
          String? name,
          Type? type,
          AccountType? accountType,
          bool? isFavorite,
          DateTime? createdDate,
          DateTime? updatedDate,
          String? data,
          String? details}) =>
      DocumentEntry(
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        accountType: accountType ?? this.accountType,
        isFavorite: isFavorite ?? this.isFavorite,
        createdDate: createdDate ?? this.createdDate,
        updatedDate: updatedDate ?? this.updatedDate,
        data: data ?? this.data,
        details: details ?? this.details,
      );
  @override
  String toString() {
    return (StringBuffer('DocumentEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('accountType: $accountType, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('data: $data, ')
          ..write('details: $details')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, type, accountType, isFavorite,
      createdDate, updatedDate, data, details);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DocumentEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type &&
          other.accountType == this.accountType &&
          other.isFavorite == this.isFavorite &&
          other.createdDate == this.createdDate &&
          other.updatedDate == this.updatedDate &&
          other.data == this.data &&
          other.details == this.details);
}

class DocumentTableCompanion extends UpdateCompanion<DocumentEntry> {
  final Value<String> id;
  final Value<String> name;
  final Value<Type> type;
  final Value<AccountType> accountType;
  final Value<bool> isFavorite;
  final Value<DateTime> createdDate;
  final Value<DateTime> updatedDate;
  final Value<String> data;
  final Value<String> details;
  final Value<int> rowid;
  const DocumentTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.accountType = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.updatedDate = const Value.absent(),
    this.data = const Value.absent(),
    this.details = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DocumentTableCompanion.insert({
    required String id,
    required String name,
    required Type type,
    required AccountType accountType,
    this.isFavorite = const Value.absent(),
    required DateTime createdDate,
    required DateTime updatedDate,
    required String data,
    required String details,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        type = Value(type),
        accountType = Value(accountType),
        createdDate = Value(createdDate),
        updatedDate = Value(updatedDate),
        data = Value(data),
        details = Value(details);
  static Insertable<DocumentEntry> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? accountType,
    Expression<bool>? isFavorite,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? updatedDate,
    Expression<String>? data,
    Expression<String>? details,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (accountType != null) 'account_type': accountType,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (createdDate != null) 'created_date': createdDate,
      if (updatedDate != null) 'updated_date': updatedDate,
      if (data != null) 'data': data,
      if (details != null) 'details': details,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DocumentTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<Type>? type,
      Value<AccountType>? accountType,
      Value<bool>? isFavorite,
      Value<DateTime>? createdDate,
      Value<DateTime>? updatedDate,
      Value<String>? data,
      Value<String>? details,
      Value<int>? rowid}) {
    return DocumentTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      accountType: accountType ?? this.accountType,
      isFavorite: isFavorite ?? this.isFavorite,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
      data: data ?? this.data,
      details: details ?? this.details,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      final converter = $DocumentTableTable.$convertertype;

      map['type'] = Variable<String>(converter.toSql(type.value));
    }
    if (accountType.present) {
      final converter = $DocumentTableTable.$converteraccountType;

      map['account_type'] =
          Variable<String>(converter.toSql(accountType.value));
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<DateTime>(updatedDate.value);
    }
    if (data.present) {
      map['data'] = Variable<String>(data.value);
    }
    if (details.present) {
      map['details'] = Variable<String>(details.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocumentTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('accountType: $accountType, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('data: $data, ')
          ..write('details: $details, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$VaultPassDb extends GeneratedDatabase {
  _$VaultPassDb(QueryExecutor e) : super(e);
  late final $UserTableTable userTable = $UserTableTable(this);
  late final $RecordTableTable recordTable = $RecordTableTable(this);
  late final $AddressTableTable addressTable = $AddressTableTable(this);
  late final $CardTableTable cardTable = $CardTableTable(this);
  late final $DocumentTableTable documentTable = $DocumentTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userTable, recordTable, addressTable, cardTable, documentTable];
}
