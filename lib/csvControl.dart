import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:csv/csv.dart';

List Team1 = new List();
List Team2 = new List();
List Team3 = new List();
List Team4 = new List();
List Team5 = new List();
List Team6 = new List();
List<List<dynamic>> csvTable = new List<List<dynamic>>();

void startUp(){
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');
  Team1.add('');

  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');
  Team2.add('');

  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');
  Team3.add('');

  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');
  Team4.add('');

  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');
  Team5.add('');

  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
  Team6.add('');
}

void addData(int teamNumber, int position, String toAdd){
  if (teamNumber == 1){
    Team1[position] = '';
  }else if (teamNumber == 2){
    Team2[position] = '';
  }else if (teamNumber == 3){
    Team3[position] = '';
  }else if (teamNumber == 4){
    Team4[position] = '';
  }else if (teamNumber == 5){
    Team5[position] = '';
  }else if (teamNumber == 6){
    Team6[position] = '';
  }
}

void toFile(){
  csvTable.add(Team1);
  csvTable.add(Team2);
  csvTable.add(Team3);
  csvTable.add(Team4);
  csvTable.add(Team5);
  csvTable.add(Team6);
  String csv = const ListToCsvConverter().convert(csvTable);
}