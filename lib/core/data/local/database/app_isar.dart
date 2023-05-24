import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class AppIsar {
  static late Isar _instance;

  static Future<void> init() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    _instance =
        await Isar.open([], directory: appDocumentDir.path, name: "AppIsar.db");
  }

  static Isar get instance {
    return _instance;
  }
}
