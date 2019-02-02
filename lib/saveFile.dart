import 'dart:io';
import 'package:path_provider/path_provider.dart';

List<String> row1 = List<String>(36);
List<String> row2 = List<String>(36);
List<String> row3 = List<String>(36);
List<String> row4 = List<String>(36);
List<String> row5 = List<String>(36);
List<String> row6 = List<String>(36);
List<List<String>> data = List<List<String>>(6);

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
  data.add(row1);
  data.add(row2);
  data.add(row3);
  data.add(row4);
  data.add(row5);
  data.add(row6);

  final file = await _localFile;
  return file.writeAsString(data.toString());
}