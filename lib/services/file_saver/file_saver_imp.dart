import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:seriese_reminders/services/file_saver/file_saver_service.dart';

class FileSaverImp extends FileSaver {
  @override
  Future<String> saveFile(File fileToSave) async {
    final rawPath = await appDocumentsPath;
    final newFilePath = path.join(rawPath, _fileName(fileToSave));

    File newFile = await fileToSave.copy(newFilePath);
    print('saved to ${newFile.path}');
    return newFilePath;
  }

  @override
  Future<void> deleteFile(File file) async {
    await file.delete();
    print('file ${file.path} has been deleted');
  }

  String _fileName(File fileToSave) {
    final String fileName = DateTime.now().microsecond.toString();
    final String extention = path.extension(fileToSave.path);

    return '$fileName$extention';
  }
}
