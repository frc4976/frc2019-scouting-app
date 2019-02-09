import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:scouting_app/cloudUpload.dart';

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

  String dataStr0 = data[0].join(",");
  String dataStr1 = data[1].join(",");
  String dataStr2 = data[2].join(",");
  String dataStr3 = data[3].join(",");
  String dataStr4 = data[4].join(",");
  String dataStr5 = data[5].join(",");
  String dataStr6 = data[6].join(",");

  List<String> csvDataStrings = List<String>(7);
  csvDataStrings[0] = dataStr0;
  csvDataStrings[1] = dataStr1;
  csvDataStrings[2] = dataStr2;
  csvDataStrings[3] = dataStr3;
  csvDataStrings[4] = dataStr4;
  csvDataStrings[5] = dataStr5;
  csvDataStrings[6] = dataStr6;

  String csvData = csvDataStrings.join("\n");

  final file = await _localFile;
  print(file.path);
  var result = file.writeAsString(csvData);
  push();
  return result;
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
