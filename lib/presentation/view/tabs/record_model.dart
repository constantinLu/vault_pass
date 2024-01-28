import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:vault_pass/domain/model/record.dart';
import 'package:vault_pass/infrastructure/repository/record_repository.dart';
import 'package:vault_pass/infrastructure/setup/app.locator.dart';
import 'package:vault_pass/infrastructure/setup/app.router.dart';

class RecordModel extends FutureViewModel<List<Record>> {
  final _recordRepository = locator<RecordRepository>();
  final _navigationService = locator<NavigationService>();

  late Future<List<Record>> records;

  late List<RecordType> recordTypes;

  @override
  Future<List<Record>> futureToRun() async {
    records = _recordRepository.getAll();
    recordTypes = await records.then((List<Record> value) {
      return value.map((Record element) => element.type).toList();
    });

    rebuildUi();

    return records;
  }

  void navigateToAboutUsSettingsView() {
    _navigationService.navigateToAboutUsSettingsView();
  }

  RecordType getType(int index) {
    return recordTypes.where((element) => element.index == index).first;
  }
}
