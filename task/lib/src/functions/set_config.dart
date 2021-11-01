import 'dart:io';

import 'package:file_picker_writable/file_picker_writable.dart';
import 'package:file_selector/file_selector.dart';

import 'package:taskc/storage.dart';

Future<void> setConfig({required Storage storage, required String key}) async {
  String? contents;
  String? name;
  if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
    var typeGroup = XTypeGroup(label: key, extensions: []);
    var file = await openFile(acceptedTypeGroups: [typeGroup]);
    if (file != null) {
      contents = await file.readAsString();
      name = file.name;
    }
  } else {
    await FilePickerWritable().openFile((fileInfo, file) async {
      contents = file.readAsStringSync();
      name = fileInfo.fileName ?? Uri.parse(fileInfo.uri).pathSegments.last;
    });
  }
  if (contents != null) {
    if (key == '.taskrc') {
      storage.home.addTaskrc(contents!);
    } else {
      storage.home.addPemFile(
        key: key,
        contents: contents!,
        name: name,
      );
    }
  }
}
