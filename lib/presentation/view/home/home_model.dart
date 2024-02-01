import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:vault_pass/application/assets.dart';
import 'package:vault_pass/domain/microtypes/microtypes.dart';
import 'package:vault_pass/domain/model/record.dart';
import 'package:vault_pass/domain/model/types.dart';
import 'package:vault_pass/infrastructure/repository/record_repository.dart';
import 'package:vault_pass/infrastructure/service/user_service.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';
import 'package:vault_pass/infrastructure/setup/app.logger.dart';
import 'package:vault_pass/infrastructure/setup/app.router.dart';

class HomeViewModel<T> extends IndexTrackingViewModel {
  final Map<Type, String> _imageType = {
    Type.record: IMAGE_ACCOUNT,
    Type.address: IMAGE_ADDRESS,
    Type.card: IMAGE_CREDITCARD,
    Type.document: IMAGE_CREDITCARD,
  };

  final log = getLogger('HomeViewModel');
  final _router = locator<RouterService>();
  final _userService = locator<UserService>();
  final _recordRepository = locator<RecordRepository>();

  final String userId;
  bool accountType = true;
  String welcomeMessage = "Hello";

  List<Record> personalRecords = [
    Record.random(recordName: "google", logo: "logo", description: "some description", url: "asd", recordType: Type.record),
    Record.random(recordName: "Home Address", logo: "logo2", description: "some description2", url: "asd2", recordType: Type.address),
    Record.random(recordName: "Revolut Card", logo: "N/A", description: "Online card", url: "N/A", recordType: Type.card),
    Record.random(recordName: "ID", logo: "N/A", description: "My ID", url: "TBD", recordType: Type.document),
  ];
  List<Record> businessRecords = [
    Record.random(
        recordName: "Microsoft",
        logo: "logo",
        description: "some description",
        url: "asd",
        recordType: Type.record,
        accountType: AccountType.business),
    Record.random(
        recordName: "Office Address",
        logo: "logo2",
        description: "some description2",
        url: "asd2",
        recordType: Type.address,
        accountType: AccountType.business),
    Record.random(
        recordName: "Company Card",
        logo: "N/A",
        description: "Online card",
        url: "N/A",
        recordType: Type.card,
        accountType: AccountType.business),
    Record.random(
        recordName: "ID", logo: "N/A", description: "My ID", url: "TBD", recordType: Type.document, accountType: AccountType.business),
  ];

  List<Record> personalRecords1 = [];
  List<Record> businessRecords1 = [];

  List<Type> get recordTypes => _imageType.keys.map((type) => type).toList();

  List<String> get recordNames => _imageType.keys.map((type) => type.name).toList();

  Type get currentRecordType => _imageType.keys.toList()[currentIndex];

  String get currentRecordImage => _imageType.values.toList()[currentIndex];

  HomeViewModel({required this.userId, records});

  void initData() {
    _initRecords();
    _initWelcomeMessage();
    rebuildUi();
  }

  bool checkRecords() {
    if (isPersonalAccountSelected()) {
      return personalRecords1.isEmpty;
    } else {
      return businessRecords1.isEmpty;
    }
  }

  List<dynamic> provideRecords() {
    List<Record> result;
    if (isPersonalAccountSelected()) {
      result = personalRecords1.where((element) => element.type == currentRecordType).toList();
    } else {
      result = businessRecords1.where((element) => element.type == currentRecordType).toList();
    }
    return result;
  }

  String imageTypes() {
    final image = _imageType[recordTypes[currentIndex]]!;
    notifyListeners();
    return image;
  }

  bool isPersonalAccountSelected() {
    return accountType;
  }

  //INIT BOTH LISTS
  void _initRecords() async {
    personalRecords1 = await _recordRepository.getByType(AccountType.personal, currentRecordType);
    personalRecords1 = personalRecords;
    businessRecords1 = await _recordRepository.getByType(AccountType.business, currentRecordType);
    businessRecords1 = businessRecords;
    notifyListeners();
  }

  Future<void> _initWelcomeMessage() async {
    final user = await _userService.getUser(UniqueId.fromUniqueString(userId));
    welcomeMessage = "$welcomeMessage ${user.firstName.get()}";
  }

  void updateAccount() {
    accountType = !accountType;
    notifyListeners();
  }

  void updateCurrentIndex(int index) {
    setIndex(index);
  }

  ///routing
  void navigateToLoginView() {
    _router.navigateToLoginView();
  }

  void navigateToFavoriteView() {
    _router.navigateToFavoriteView();
  }

  void navigateToNotificationView() {
    _router.navigateToNotificationView();
  }

  void processView() {
    _router.navigateToFavoriteView();
  }
}
