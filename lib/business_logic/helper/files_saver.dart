import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as pathP;

class FilesSaver {
  Future<String> get appDocumentsPath async {
    Directory appDir = await pathP.getApplicationDocumentsDirectory();
    return appDir.path;
  }

  Future<String> saveFile(File fileToSave) async {
    final rawPath = await appDocumentsPath;
    final newFilePath = path.join(rawPath, _fileName(fileToSave));

    File newFile = await fileToSave.copy(newFilePath);
    print('saved to ${newFile.path}');
    return newFilePath;
  }

  Future<void> deleteFile(File file) async {
    await file
        .delete()
        .then((value) => print('file ${file.path} has been deleted'));
  }

  String _fileName(File fileToSave) {
    final String fileName = DateTime.now().microsecond.toString();
    final String extention = path.extension(fileToSave.path);

    return '$fileName$extention';
  }
}
