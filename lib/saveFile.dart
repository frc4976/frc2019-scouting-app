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
List<String> row7= List<String>(42);
List<String> row8 = List<String>(42);
List<String> row9 = List<String>(42);
List<String> row10 = List<String>(42);
List<String> row11 = List<String>(42);
List<String> row12 = List<String>(42);
List<String> row13 = List<String>(42);
List<String> row14 = List<String>(42);
List<String> row15 = List<String>(42);
List<String> row16 = List<String>(42);
List<String> row17 = List<String>(42);
List<String> row18 = List<String>(42);
List<String> row19 = List<String>(42);
List<String> row20 = List<String>(42);
List<List<String>> data = List<List<String>>(21);

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
  } else if (row == 7){
    row7[column] = toAdd;
  } else if (row == 8){
    row8[column] = toAdd;
  } else if (row == 9){
    row9[column] = toAdd;
  } else if (row == 10){
    row10[column] = toAdd;
  } else if (row == 11){
    row11[column] = toAdd;
  } else if (row == 12){
    row12[column] = toAdd;
  } else if (row == 13){
    row13[column] = toAdd;
  } else if (row == 14){
    row14[column] = toAdd;
  } else if (row == 15){
    row15[column] = toAdd;
  } else if (row == 16){
    row16[column] = toAdd;
  } else if (row == 17){
    row17[column] = toAdd;
  } else if (row == 18){
    row18[column] = toAdd;
  } else if (row == 19){
    row19[column] = toAdd;
  } else if (row == 20){
    row20[column] = toAdd;
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
  row7[0] = teamNumber7;
  row8[0] = teamNumber8;
  row9[0] = teamNumber9;
  row10[0] = teamNumber10;
  row11[0] = teamNumber11;
  row12[0] = teamNumber12;
  row13[0] = teamNumber13;
  row14[0] = teamNumber14;
  row15[0] = teamNumber15;
  row16[0] = teamNumber16;
  row17[0] = teamNumber17;
  row18[0] = teamNumber18;
  row19[0] = teamNumber19;
  row20[0] = teamNumber20;

  row1[1] = matchNumber1;
  row2[1] = matchNumber2;
  row3[1] = matchNumber3;
  row4[1] = matchNumber4;
  row5[1] = matchNumber5;
  row6[1] = matchNumber6;
  row7[1] = matchNumber7;
  row8[1] = matchNumber8;
  row9[1] = matchNumber9;
  row10[1] = matchNumber10;
  row11[1] = matchNumber11;
  row12[1] = matchNumber12;
  row13[1] = matchNumber13;
  row14[1] = matchNumber14;
  row15[1] = matchNumber15;
  row16[1] = matchNumber16;
  row17[1] = matchNumber17;
  row18[1] = matchNumber18;
  row19[1] = matchNumber19;
  row20[1] = matchNumber20;


  data[0] = titles;
  data[1] = row1;
  data[2] = row2;
  data[3] = row3;
  data[4] = row4;
  data[5] = row5;
  data[6] = row6;
  data[7] = row7;
  data[8] = row8;
  data[9] = row9;
  data[10] = row10;
  data[11] = row11;
  data[12] = row12;
  data[13] = row13;
  data[14] = row14;
  data[15] = row15;
  data[16] = row16;
  data[17] = row17;
  data[18] = row18;
  data[19] = row19;
  data[20] = row20;

  String dataStr0 = data[0].join(",");
  String dataStr1 = data[1].join(",");
  String dataStr2 = data[2].join(",");
  String dataStr3 = data[3].join(",");
  String dataStr4 = data[4].join(",");
  String dataStr5 = data[5].join(",");
  String dataStr6 = data[6].join(",");
  String dataStr7 = data[7].join(",");
  String dataStr8 = data[8].join(",");
  String dataStr9 = data[9].join(",");
  String dataStr10 = data[10].join(",");
  String dataStr11 = data[11].join(",");
  String dataStr12 = data[12].join(",");
  String dataStr13 = data[13].join(",");
  String dataStr14 = data[14].join(",");
  String dataStr15 = data[15].join(",");
  String dataStr16 = data[16].join(",");
  String dataStr17 = data[17].join(",");
  String dataStr18 = data[18].join(",");
  String dataStr19 = data[19].join(",");
  String dataStr20 = data[20].join(",");

  List<String> csvDataStrings = List<String>(21);
  csvDataStrings[0] = dataStr0;
  csvDataStrings[1] = dataStr1;
  csvDataStrings[2] = dataStr2;
  csvDataStrings[3] = dataStr3;
  csvDataStrings[4] = dataStr4;
  csvDataStrings[5] = dataStr5;
  csvDataStrings[6] = dataStr6;
  csvDataStrings[7] = dataStr7;
  csvDataStrings[8] = dataStr8;
  csvDataStrings[9] = dataStr9;
  csvDataStrings[10] = dataStr10;
  csvDataStrings[11] = dataStr11;
  csvDataStrings[12] = dataStr12;
  csvDataStrings[13] = dataStr13;
  csvDataStrings[14] = dataStr14;
  csvDataStrings[15] = dataStr15;
  csvDataStrings[16] = dataStr16;
  csvDataStrings[17] = dataStr17;
  csvDataStrings[18] = dataStr18;
  csvDataStrings[19] = dataStr19;
  csvDataStrings[20] = dataStr20;

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