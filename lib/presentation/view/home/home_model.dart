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
  final Map<RecordType, String> _imageType = {
    RecordType.record: IMAGE_ACCOUNT,
    RecordType.address: IMAGE_ADDRESS,
    RecordType.card: IMAGE_CREDITCARD,
    RecordType.document: IMAGE_CREDITCARD,
  };

  final log = getLogger('HomeViewModel');
  final _router = locator<RouterService>();
  final _userService = locator<UserService>();
  final _recordRepository = locator<RecordRepository>();

  final String userId;
  bool accountType = true;

  List<Record> personalRecords = [
    Record.random(recordName: "google", logo: "logo", description: "some description", url: "asd", recordType: RecordType.record),
    Record.random(recordName: "Home Address", logo: "logo2", description: "some description2", url: "asd2", recordType: RecordType.address),
    Record.random(recordName: "Revolut Card", logo: "N/A", description: "Online card", url: "N/A", recordType: RecordType.card),
    Record.random(recordName: "ID", logo: "N/A", description: "My ID", url: "TBD", recordType: RecordType.document),
  ];
  List<Record> businessRecords = [
    Record.random(
        recordName: "Microsoft",
        logo: "logo",
        description: "some description",
        url: "asd",
        recordType: RecordType.record,
        accountType: AccountType.business),
    Record.random(
        recordName: "Office Address",
        logo: "logo2",
        description: "some description2",
        url: "asd2",
        recordType: RecordType.address,
        accountType: AccountType.business),
    Record.random(
        recordName: "Company Card",
        logo: "N/A",
        description: "Online card",
        url: "N/A",
        recordType: RecordType.card,
        accountType: AccountType.business),
    Record.random(
        recordName: "ID",
        logo: "N/A",
        description: "My ID",
        url: "TBD",
        recordType: RecordType.document,
        accountType: AccountType.business),
  ];

  List<Record> personalRecords1 = [];
  List<Record> businessRecords1 = [];

  List<RecordType> get recordTypes => _imageType.keys.map((type) => type).toList();

  RecordType get currentRecordType => _imageType.keys.toList()[currentIndex];

  List<String> get recordNames => _imageType.keys.map((type) => type.name).toList();

  HomeViewModel({required this.userId, records});

  List<dynamic> provideRecords() {
    if (isPersonalAccountSelected()) {
      return personalRecords1.where((element) => element.type == currentRecordType).toList();
    } else {
      return businessRecords1.where((element) => element.type == currentRecordType).toList();
    }
  }

  void selectRecords() async {
    if (isPersonalAccountSelected()) {
      personalRecords1 = await _recordRepository.getByType(AccountType.personal, currentRecordType);
      personalRecords1 = personalRecords;
    } else {
      businessRecords1 = await _recordRepository.getByType(AccountType.business, currentRecordType);
      businessRecords1 = businessRecords;
    }
  }

  String imageTypes() {
    final image = _imageType[recordTypes[currentIndex]]!;
    notifyListeners();
    return image;
  }

  bool isPersonalAccountSelected() {
    return accountType;
  }

  Future<String> welcomeMessage() async {
    final user = await _userService.getUser(UniqueId.fromUniqueString(userId));
    selectRecords();
    return "Hello ${user.firstName.get()}";
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
