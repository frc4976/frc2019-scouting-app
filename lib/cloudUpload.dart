import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:scouting_app/aLotOfVariables.dart';


String email = "";
String password = "";

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}
Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/data.csv');
}

Future<int> push() async {
  try {
    final file = await _localFile;
    File dataPath = new File(file.path);

    final StorageReference firebaseStorageRef =
    FirebaseStorage.instance.ref().child('$sheetName.csv');
    final StorageUploadTask task =
    firebaseStorageRef.putFile(dataPath);

  } catch (e) {
    return 0;
  }
}