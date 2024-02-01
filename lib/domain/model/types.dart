enum AccountType {
  personal("Personal"),
  business("Business");

  final String value;

  const AccountType(this.value);

  static AccountType valueOf(String value) {
    return AccountType.values.firstWhere((val) => val.value == value);
  }
}

enum RecordType {
  record("record"),
  address("address"),
  card("card"),
  document("document");

  final String value;

  const RecordType(this.value);

  static RecordType valueOf(String value) {
    return RecordType.values.firstWhere((val) => val.value == value);
  }
}

enum AuthState {
  unauthenticated,
  authenticated,
  authorizedCredentials,
  authorizedPin,
  authorizedBiometrics;

  static AuthState valueOf(String? value) {
    return AuthState.values.firstWhere((element) =>
    element
        .toString()
        .split('.')
        .last == value,
        orElse: () => AuthState.unauthenticated);
  }
}
