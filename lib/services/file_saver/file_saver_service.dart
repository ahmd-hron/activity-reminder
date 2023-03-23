import 'dart:io';
import 'package:path_provider/path_provider.dart' as path_provider;

abstract class FileSaver {
  Future<String> get appDocumentsPath async {
    Directory appDir = await path_provider.getApplicationDocumentsDirectory();
    return appDir.path;
  }

  Future<String> saveFile(File fileToSave);
  Future<void> deleteFile(File file);
}
