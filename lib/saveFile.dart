import 'dart:io';
import 'package:path_provider/path_provider.dart';

List<String> titles = List<String>(36);
List<String> row1 = List<String>(36);
List<String> row2 = List<String>(36);
List<String> row3 = List<String>(36);
List<String> row4 = List<String>(36);
List<String> row5 = List<String>(36);
List<String> row6 = List<String>(36);
List<List<String>> data = List<List<String>>(7);

void addData(int column, int row, String toAdd) {
  if (row == 1) {
    row1[column] = toAdd;
  } else if (row == 2){
    row2[column] = toAdd;
  } else if (row == 3){
    row3[column] = toAdd;
  } else if (row == 4){
    row4[column] = toAdd;
  } else if (row == 5){
    row5[column] = toAdd;
  } else if (row == 6){
    row6[column] = toAdd;
  }
}

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}
Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/data.csv');
}

Future<File> writeFile() async {
  data[0] = titles;
  data[1] = row1;
  data[2] = row2;
  data[3] = row3;
  data[4] = row4;
  data[5] = row5;
  data[6] = row6;

  final file = await _localFile;
  print(file.path);
  return file.writeAsString(data.toString());
}

Future<int> readCounter() async {
  try {
    final file = await _localFile;

    // Read the file
    String contents = await file.readAsString();
    print(contents);

  } catch (e) {
    // If we encounter an error, return 0
    return 0;
  }
}
