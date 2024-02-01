enum AccountType {
  personal("Personal"),
  business("Business");

  final String value;

  const AccountType(this.value);

  static AccountType valueOf(String value) {
    return AccountType.values.firstWhere((val) => val.value == value);
  }
}

enum Type {
  record("Records"),
  address("Addresses"),
  card("Cards"),
  document("Documents");

  final String value;

  const Type(this.value);

  static Type valueOf(String value) {
    return Type.values.firstWhere((val) => val.value == value);
  }
}

enum AuthState {
  unauthenticated,
  authenticated,
  authorizedCredentials,
  authorizedPin,
  authorizedBiometrics;

  static AuthState valueOf(String? value) {
    return AuthState.values.firstWhere((element) => element.toString().split('.').last == value, orElse: () => AuthState.unauthenticated);
  }
}
