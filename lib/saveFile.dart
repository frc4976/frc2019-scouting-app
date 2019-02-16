import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:scouting_app/cloudUpload.dart';
import 'package:scouting_app/aLotOfVariables.dart';

List<String> titles = List<String>(42);
List<String> row1 = List<String>(42);
List<String> row2 = List<String>(42);
List<String> row3 = List<String>(42);
List<String> row4 = List<String>(42);
List<String> row5 = List<String>(42);
List<String> row6 = List<String>(42);
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
  titles[0] = "Team Number";
  titles[1] = "Match Number";
  titles[2] = "Team Colour";
  titles[3] = "Bot Position";
  titles[4] = "Null Hatches";
  titles[5] = "Moved";
  titles[6] = "Crossed";
  titles[7] = "Pre-H";
  titles[8] = "Pre-C";
  titles[9] = "First Move";
  titles[10] = "Successful?";
  titles[11] = "Left Close 3";
  titles[12] = "Left Close 2";
  titles[13] = "Left Close 1";
  titles[14] = "Left Cargo 3";
  titles[15] = "Left Cargo 2";
  titles[16] = "Left Cargo 1";
  titles[17] = "Left Far 3";
  titles[18] = "Left Far 2";
  titles[19] = "Left Far 1";
  titles[20] = "Ship Hatches";
  titles[21] = "Ship Cargo";
  titles[22] = "Right Far 3";
  titles[23] = "Right Far 2";
  titles[24] = "Right Far 1";
  titles[25] = "Right Cargo 3";
  titles[26] = "Right Cargo 2";
  titles[27] = "Right Cargo 1";
  titles[28] = "Right Close 3";
  titles[29] = "Right Close 2";
  titles[30] = "Right Close 1";
  titles[31] = "Breakdown?";
  titles[32] = "Recovered?";
  titles[33] = "Pickup";
  titles[34] = "Self";
  titles[35] = "Supported";
  titles[36] = "Helped";
  titles[37] = "Defense";
  titles[38] = "Foul Points";
  titles[39] = "Red";
  titles[40] = "Yellow";
  titles[41] = "Score";

  row1[0] = teamNumber1;
  row2[0] = teamNumber2;
  row3[0] = teamNumber3;
  row4[0] = teamNumber4;
  row5[0] = teamNumber5;
  row6[0] = teamNumber6;

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
  csvData = csvData.replaceAll('null', '-');

  final file = await _localFile;
  print(file.path);
  var result = file.writeAsString(csvData);
  push();
  return result;
}

Future<int> readCounter() async {
  try {
    final file = await _localFile;
    String contents = await file.readAsString();
    print(contents);

  } catch (e) {
    return 0;
  }
}
