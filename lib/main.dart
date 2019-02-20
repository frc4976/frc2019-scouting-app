import 'package:flutter/material.dart';
import 'package:scouting_app/saveFile.dart';
import 'package:scouting_app/aLotOfVariables.dart';
import 'package:flutter/services.dart';

int numberOfMatches = 0;

bool whateverYouWant = false;

double match1Opacity = 0.0;
double match2Opacity = 0.0;
double match3Opacity = 0.0;
double match4Opacity = 0.0;
double match5Opacity = 0.0;
double match6Opacity = 0.0;
double match7Opacity = 0.0;
double match8Opacity = 0.0;
double match9Opacity = 0.0;
double match10Opacity = 0.0;
double match11Opacity = 0.0;
double match12Opacity = 0.0;
double match13Opacity = 0.0;
double match14Opacity = 0.0;
double match15Opacity = 0.0;
double match16Opacity = 0.0;
double match17Opacity = 0.0;
double match18Opacity = 0.0;
double match19Opacity = 0.0;
double match20Opacity = 0.0;

bool checkValue = false;
bool checkValue2 = false;
bool checkValue3 = false;
bool checkValue4 = false;
bool checkValue5 = false;
bool checkValue6 = false;
bool checkValue7 = false;
bool checkValue8 = false;
bool checkValue9 = false;
bool checkValue10 = false;
bool checkValue11 = false;
bool checkValue12 = false;
bool checkValue13 = false;
bool checkValue14 = false;
bool pickup = false;

int self = 0;
int supported = 0;
int helped = 0;
int defense = 0;
int fouls = 0;
bool yellow = false;
bool red = false;
int score = 0;
bool successful = false;
int shipCargo;
int shipHatches;

bool firstMove = false;
bool firstMove2 = false;
bool firstMove3 = false;
bool firstMove4 = false;
bool firstMove5 = false;
bool firstMove6 = false;
bool firstMove7 = false;
bool firstMove8 = false;

bool lRocket = false;
bool lRocket2 = false;
bool lRocket3 = false;
bool lRocket4 = false;
bool lRocket5 = false;
bool lRocket6 = false;

bool rRocket = false;
bool rRocket2 = false;
bool rRocket3 = false;
bool rRocket4 = false;
bool rRocket5 = false;
bool rRocket6 = false;

String colour1;
String colour2;
String colour3;
String colour4;
String colour5;
String colour6;

String text;
String text2;
String text3;

String lRocketText;
String lRocketText2;
String lRocketText3;

String rRocketText;
String rRocketText2;
String rRocketText3;

String rocketT;
String rocketT2;
String rocketT3;
String rocketT4;
String rocketT5;
String rocketT6;

String nullHatches;

int rRocketCargo = 0;
int rRocketCargo2 = 0;
int rRocketCargo3 = 0;

int lRocketCargo = 0;
int lRocketCargo2 = 0;
int lRocketCargo3 = 0;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    readCounter();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Scouting App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );

  }
}

class MyHomePage extends StatefulWidget {
  final String title = 'Scouting App';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color c = new Color.fromARGB(100, 156, 39, 39);
CrossFadeState state=CrossFadeState.showSecond;
@override
void initState(){
  Future.delayed(Duration(seconds: 2),()=>setState((){state=CrossFadeState.showFirst;}));
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: Duration(milliseconds: 500),
      crossFadeState: state,
      secondChild: Splash(),
      firstChild: Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey[200],
                    Colors.grey[800]
                  ]
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  minWidth: 200.0,
                  height: 75.0,
                  child: RaisedButton(
                      child: Text('New Data Sheet', style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CreateMatch())
                        );
                      },
                      color: Colors.indigo[900]
                  ),
                ),

                RaisedButton(
                    child: Text(
                      'Help',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HelpPage())
                      ) ;
                    },
                    color: Colors.indigo[900]
                ),
                FlatButton(
                    child: Text(
                      '.',
                      style: TextStyle(fontSize: 5.0),
                    ),
                    onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context)=>Scaffold(
                         body: SizedBox(
                           width: 400,
                           child: Container(
                             decoration: BoxDecoration(
                             image: DecorationImage(
                                 fit: BoxFit.fitWidth,
                                 image:   AssetImage("assets/WillieTheWizard.bmp")
                               )
                             )
                             ),
                           ),
                       ))
                     );
                    }
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class CreateMatch extends StatefulWidget{
  final String title = 'Create Match';

  @override
  MatchPageState createState() => MatchPageState();
}

class MatchPageState extends State<CreateMatch>{
  RaisedButton btn1 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber1));
  RaisedButton btn2 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber2));
  RaisedButton btn3 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber3));
  RaisedButton btn4 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber4));
  RaisedButton btn5 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber5));
  RaisedButton btn6 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber6));
  RaisedButton btn7 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber7));
  RaisedButton btn8 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber8));
  RaisedButton btn9 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber9));
  RaisedButton btn10 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber10));
  RaisedButton btn11 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber11));
  RaisedButton btn12 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber12));
  RaisedButton btn13 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber13));
  RaisedButton btn14 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber14));
  RaisedButton btn15 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber15));
  RaisedButton btn16 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber16));
  RaisedButton btn17 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber17));
  RaisedButton btn18 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber18));
  RaisedButton btn19 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber19));
  RaisedButton btn20 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber20));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Data Sheet'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: new InputDecoration(labelText: 'Your first and last name...'),
                  onChanged: (name) {
                    sheetName = name.replaceAll(" ", "");
                  },
                ),
                Center(
                  child: RaisedButton(
                      child: Text(
                        'Add Data',
                      ),
                      onPressed: () {
                        setState(() {
                          numberOfMatches++;
                          if (numberOfMatches == 1){
                            match1Opacity = 1.0;
                          }else if (numberOfMatches == 2){
                            match2Opacity = 1.0;
                          }else if (numberOfMatches == 3){
                            match3Opacity = 1.0;
                          }else if (numberOfMatches == 4){
                            match4Opacity = 1.0;
                          }else if (numberOfMatches == 5){
                            match5Opacity = 1.0;
                          }else if (numberOfMatches == 6){
                            match6Opacity = 1.0;
                          }else if (numberOfMatches == 7){
                            match7Opacity = 1.0;
                          }else if (numberOfMatches == 8){
                            match8Opacity = 1.0;
                          }else if (numberOfMatches == 9){
                            match9Opacity = 1.0;
                          }else if (numberOfMatches == 10){
                            match10Opacity = 1.0;
                          }else if (numberOfMatches == 11){
                            match11Opacity = 1.0;
                          }else if (numberOfMatches == 12){
                            match12Opacity = 1.0;
                          }else if (numberOfMatches == 13){
                            match13Opacity = 1.0;
                          }else if (numberOfMatches == 14){
                            match14Opacity = 1.0;
                          }else if (numberOfMatches == 15){
                            match15Opacity = 1.0;
                          }else if (numberOfMatches == 16){
                            match16Opacity = 1.0;
                          }else if (numberOfMatches == 17){
                            match17Opacity = 1.0;
                          }else if (numberOfMatches == 18){
                            match18Opacity = 1.0;
                          }else if (numberOfMatches == 19){
                            match19Opacity = 1.0;
                          }else if (numberOfMatches == 20){
                            match20Opacity = 1.0;
                          }
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Team())
                        ) ;
                      }
                  ),
                ),
                Center(
                    child: RaisedButton(
                        child: new Text('Upload Data'),
                        onPressed: (){
                          showAlertDialog(context);
                        }
                    )
                ),

                new Opacity(opacity: match1Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn1),
                )),
                new Opacity(opacity: match2Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn2),
                )),
                new Opacity(opacity: match3Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn3),
                )),
                new Opacity(opacity: match4Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn4),
                )),
                new Opacity(opacity: match5Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn5),
                )),
                new Opacity(opacity: match6Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn6),
                )),
                new Opacity(opacity: match7Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn7),
                )),
                new Opacity(opacity: match8Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn8),
                )),
                new Opacity(opacity: match9Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn9),
                )),
                new Opacity(opacity: match10Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn10),
                )),
                new Opacity(opacity: match11Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn11),
                )),
                new Opacity(opacity: match12Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn12),
                )),
                new Opacity(opacity: match13Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn13),
                )),
                new Opacity(opacity: match14Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn14),
                )),
                new Opacity(opacity: match15Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn15),
                )),
                new Opacity(opacity: match16Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn16),
                )),
                new Opacity(opacity: match17Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn17),
                )),
                new Opacity(opacity: match18Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn18),
                )),
                new Opacity(opacity: match19Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn19),
                )),
                new Opacity(opacity: match20Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn20),
                )),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class HelpPage extends StatefulWidget{
  final String title = 'Help';

  @override
  HelpPageState createState() => HelpPageState();
}

class HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'For each match, use the New Match button to create a new match data table. Next, enter data for each of the teams competing in the match. Press export to choose where to put the newly-formed Excel file. Thanks for using the app!\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,

              ),
            ),
RaisedButton(
child: Text(
'Thank you app, very cool!',
style: TextStyle(color: Colors.white)),
onPressed: () {
Navigator.pop(
context
);
},
color: Colors.indigo[900],
),
],
),
),
);
}
}

class Splash extends StatefulWidget{

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.dstATop),
                image: new AssetImage("assets/splash.jpg"),
                fit: BoxFit.cover,
              ),
            )
        )
    );
  }
}

class Team extends StatefulWidget{

  @override
  TeamState createState() => TeamState();
}

class TeamState extends State<Team>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Pregame'),
        ),
        body: new Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: new InputDecoration(
                          labelText: 'Match Number'
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (text) {
                        setState(() {
                          if (numberOfMatches == 1){
                            matchNumber1 = text;
                          }else if (numberOfMatches == 2){
                            matchNumber2 = text;
                          }else if (numberOfMatches == 3){
                            matchNumber3 = text;
                          }else if (numberOfMatches == 4){
                            matchNumber4 = text;
                          }else if (numberOfMatches == 5){
                            matchNumber5 = text;
                          }else if (numberOfMatches == 6){
                            matchNumber6 = text;
                          }else if (numberOfMatches == 7){
                            matchNumber7 = text;
                          }else if (numberOfMatches == 8){
                            matchNumber8 = text;
                          }else if (numberOfMatches == 9){
                            matchNumber9 = text;
                          }else if (numberOfMatches == 10){
                            matchNumber10 = text;
                          }else if (numberOfMatches == 11){
                            matchNumber11 = text;
                          }else if (numberOfMatches == 12){
                            matchNumber12 = text;
                          }else if (numberOfMatches == 13){
                            matchNumber13 = text;
                          }else if (numberOfMatches == 14){
                            matchNumber14 = text;
                          }else if (numberOfMatches == 15){
                            matchNumber15 = text;
                          }else if (numberOfMatches == 16){
                            matchNumber16 = text;
                          }else if (numberOfMatches == 17){
                            matchNumber17 = text;
                          }else if (numberOfMatches == 18){
                            matchNumber18 = text;
                          }else if (numberOfMatches == 19){
                            matchNumber19 = text;
                          }else if (numberOfMatches == 20){
                            matchNumber20 = text;
                          }
                          
                        });
                      },
                    ),

                    TextField(
                      decoration: new InputDecoration(
                          labelText: 'Team Number'
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (text) {
                        setState(() {
                          if (numberOfMatches == 1){
                            teamNumber1 = text;
                          }else if (numberOfMatches == 2){
                            teamNumber2 = text;
                          }else if (numberOfMatches == 3){
                            teamNumber3 = text;
                          }else if (numberOfMatches == 4){
                            teamNumber4 = text;
                          }else if (numberOfMatches == 5){
                            teamNumber5 = text;
                          }else if (numberOfMatches == 6){
                            teamNumber6 = text;
                          }else if (numberOfMatches == 7){
                            teamNumber7 = text;
                          }else if (numberOfMatches == 8){
                            teamNumber8 = text;
                          }else if (numberOfMatches == 9){
                            teamNumber9 = text;
                          }else if (numberOfMatches == 10){
                            teamNumber10 = text;
                          }else if (numberOfMatches == 11){
                            teamNumber11 = text;
                          }else if (numberOfMatches == 12){
                            teamNumber12 = text;
                          }else if (numberOfMatches == 13){
                            teamNumber13 = text;
                          }else if (numberOfMatches == 14){
                            teamNumber14 = text;
                          }else if (numberOfMatches == 15){
                            teamNumber15 = text;
                          }else if (numberOfMatches == 16){
                            teamNumber16 = text;
                          }else if (numberOfMatches == 17){
                            teamNumber17 = text;
                          }else if (numberOfMatches == 18){
                            teamNumber18 = text;
                          }else if (numberOfMatches == 19){
                            teamNumber19 = text;
                          }else if (numberOfMatches == 20){
                            teamNumber20 = text;
                          }

                        });
                      },
                    ),

                    CheckboxListTile(
                      value: checkValue3,
                      title: new Text('Red?'),
                      activeColor: Colors.red[600],
                      onChanged: (bool changed3) {
                        setState(() {
                          checkValue3 = changed3;
                          checkValue4 = !changed3;
                        });
                      },
                    ),

                    CheckboxListTile(
                        value: checkValue4,
                        title: new Text('Blue?'),
                        activeColor: Colors.blue[600],
                        onChanged: (bool changed4) {
                          setState(() {
                            checkValue4 = changed4;
                            checkValue3 = !changed4;  //stops user from pressing both red and blue
                          });
                        }
                    ),

                    CheckboxListTile(
                        value: checkValue13,
                        title: new Text('Preloaded Hatch Panels'),
                        onChanged: (bool changed13) {
                          setState(() {
                            checkValue13 = changed13;
                            checkValue14 = !changed13;
                          });

                        }
                    ),

                    CheckboxListTile(
                        value: checkValue14,
                        title: new Text('Preloaded Cargo'),
                        onChanged: (bool changed14){
                          setState(() {
                            checkValue14 = changed14;
                            checkValue13 = !changed14;
                          });
                        }
                    ),

                    Text('Bot starting position'),

                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: checkValue8,
                          onChanged: (bool changed8){
                            setState(() {
                              checkValue8 = true;
                              checkValue9 = false;
                              checkValue10 = false;
                              checkValue11 = false;
                              checkValue12 = false;
                            });
                          },
                        ),

                        Checkbox(value: checkValue9,
                            onChanged: (bool changed){
                          setState(() {
                            checkValue9 = true;
                            checkValue10 = false;
                            checkValue8 = false;
                            checkValue11 = false;
                            checkValue12 = false;
                          });
                            }
                        ),

                        Checkbox(
                          value: checkValue10,
                          onChanged: (bool changed){
                            setState(() {
                              checkValue10 = true;
                              checkValue8 = false;
                              checkValue9 = false;
                              checkValue11 = false;
                              checkValue12 = false;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: checkValue11,
                          onChanged: (bool changed10){
                            setState(() {
                              checkValue11 = true;
                              checkValue9 = false;
                              checkValue8 = false;
                              checkValue10 = false;
                              checkValue12 = false;
                            });
                          },
                        ),

                        Checkbox(
                          value: false,
                          onChanged: null
                        ),

                        Checkbox(
                          value: checkValue12,
                          onChanged: (bool changed12){
                            setState(() {
                              checkValue12 = true;
                              checkValue9 = false;
                              checkValue10 = false;
                              checkValue11 = false;
                              checkValue8 = false;
                            });
                          },
                        ),
                      ],
                    ),

                    CheckboxListTile(
                      value: successful,
                      title: new Text('Were they successful?'),
                      onChanged: (changed) {
                        setState(() {
                          successful = changed;
                        });
                      },
                    ),

                    Align(
                        alignment: Alignment.bottomCenter,
                        child: new RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Team2())
                              );
                            },
                          color: Colors.blue[800],
                          child: Text('Next', style: TextStyle(color: Colors.white),),
                        )
                    ),
                  ],
                ),
              )
          ),
    );
  }
}

void addTeamInfo(){
  String crossed = checkValue5?'1':'0';
  String moved = checkValue?'1':'0';
  String breakdown = checkValue6?'1':'0';
  String recover = checkValue7?'1':'0';
  String success = successful?'1':'0';

  String lRocketlog1 = lRocket?'1':'0';
  String lRocketlog2 = lRocket2?'1':'0';
  String lRocketlog3 = lRocket3?'1':'0';
  String lRocketlog4 = lRocket4?'1':'0';
  String lRocketlog5 = lRocket5?'1':'0';
  String lRocketlog6 = lRocket6?'1':'0';

  String rRocketlog1 = rRocket?'1':'0';
  String rRocketlog2 = rRocket2?'1':'0';
  String rRocketlog3 = rRocket3?'1':'0';
  String rRocketlog4 = rRocket4?'1':'0';
  String rRocketlog5 = rRocket5?'1':'0';
  String rRocketlog6 = rRocket6?'1':'0';

  addData(0,numberOfMatches,text);
  addData(1,numberOfMatches, numberOfMatches.toString());
  addData(4, numberOfMatches, nullHatches);
  addData(5, numberOfMatches,moved);
  addData(6,numberOfMatches,crossed);
  addData(10,numberOfMatches,success);

  addData(11,numberOfMatches,lRocketlog1);
  addData(17,numberOfMatches,lRocketlog2);
  addData(12,numberOfMatches,lRocketlog3);
  addData(18,numberOfMatches,lRocketlog4);
  addData(13,numberOfMatches,lRocketlog5);
  addData(19,numberOfMatches,lRocketlog6);
  addData(14,numberOfMatches,rocketT);
  addData(15,numberOfMatches,rocketT2);
  addData(16,numberOfMatches,rocketT3);

  addData(22,numberOfMatches,rRocketlog1);
  addData(28,numberOfMatches,rRocketlog2);
  addData(23,numberOfMatches,rRocketlog3);
  addData(29,numberOfMatches,rRocketlog4);
  addData(24,numberOfMatches,rRocketlog5);
  addData(30,numberOfMatches,rRocketlog6);
  addData(25,numberOfMatches,rocketT4);
  addData(26,numberOfMatches,rocketT5);
  addData(27,numberOfMatches,rocketT6);

  addData(31,numberOfMatches,breakdown);
  addData(32,numberOfMatches,recover);


  if (checkValue3==true&&checkValue4==false){
    addData(2,numberOfMatches,'red');
  }else if(checkValue4==true&&checkValue3==false){
    addData(2,numberOfMatches,'blue');
  }

  if (checkValue8==true){
    addData(3,numberOfMatches,'11');
  }else if(checkValue9==true){
    addData(3,numberOfMatches,'12');
  }else if(checkValue10==true){
    addData(3,numberOfMatches,'13');
  }else if(checkValue11==true){
    addData(3,numberOfMatches,'21');
  }else if(checkValue12==true){
    addData(3,numberOfMatches,'23');
  }

  if (checkValue6){
    addData(31, numberOfMatches, "1");
  }else{
    addData(31, numberOfMatches, "0");
  }

  if (checkValue7){
    addData(32, numberOfMatches, "1");
  }else{
    addData(32, numberOfMatches, "0");
  }

  if (pickup){
    addData(33, numberOfMatches, "1");
  }else{
    addData(33, numberOfMatches, "0");
  }

  addData(34, numberOfMatches, self.toString());
  addData(35, numberOfMatches, supported.toString());
  addData(36, numberOfMatches, helped.toString());
  addData(37, numberOfMatches, defense.toString());
  addData(38, numberOfMatches, fouls.toString());

  addData(20, numberOfMatches, shipHatches.toString());
  addData(21, numberOfMatches, shipCargo.toString());

  if (red){
    addData(39, numberOfMatches, "1");
  }else{
    addData(39, numberOfMatches, "0");
  }

  if (yellow){
    addData(40, numberOfMatches, "1");
  }else{
    addData(40, numberOfMatches, "0");
  }

  addData(41, numberOfMatches, score.toString());

  if(firstMove==true){
    addData(9,numberOfMatches,'D');
  }else if(firstMove2==true){
    addData(9,numberOfMatches,'E');
  }else if(firstMove3==true){
    addData(9,numberOfMatches,'C');
  }else if(firstMove4==true){
    addData(9,numberOfMatches,'F');
  }else if(firstMove5==true){
    addData(9, numberOfMatches,'B');
  }else if(firstMove6==true){
    addData(9,numberOfMatches,'G');
  }else if(firstMove7==true){
    addData(9,numberOfMatches,'A');
  }else if(firstMove8==true){
    addData(9,numberOfMatches,'H');
  }

  if (checkValue13==true&&checkValue14==false){
    addData(7, numberOfMatches, '1');
    addData(8,numberOfMatches,'0');
  }else if (checkValue14==true&&checkValue13==false){
    addData(7, numberOfMatches, '0');
    addData(8,numberOfMatches,'1');
  }

}

class Team2 extends StatefulWidget{

  @override
  TeamState2 createState() => TeamState2();
}

class TeamState2 extends State<Team2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Sandstorm Period'),
        ),
        body: new Center(
            child: SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                      CheckboxListTile(
                        value: checkValue2,
                        title: new Text('Moved?'),
                        activeColor: Colors.teal[200],
                        onChanged: (bool changed2) {
                          setState(() {
                            checkValue2 = changed2;
                          });
                        },
                      ),
                      CheckboxListTile(
                        value: checkValue5,
                        title: new Text('Crossed Line?'),
                        activeColor: Colors.teal[200],
                        onChanged: (bool changed5) {
                          setState(() {
                            checkValue5 = changed5;
                          });
                        },
                      ),
                      TextField(
                        decoration: new InputDecoration(
                            labelText: 'Hatch Panels'
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (text3) {
                          nullHatches = text3;
                        },
                      ),

                      Text('First move', style: new TextStyle(fontSize: 20.0),),

                      Row(
                        children: <Widget>[

                          Checkbox(
                              value: firstMove,
                              onChanged: (bool changed){
                                setState(() {
                                  firstMove = true;
                                  firstMove2 = false;
                                  firstMove3 = false;
                                  firstMove4 = false;
                                  firstMove5 = false;
                                  firstMove6 = false;
                                  firstMove7 = false;
                                  firstMove8 = false;
                                });
                              }
                          ),
                          Checkbox(
                              value: firstMove2,
                              onChanged: (bool changed){
                                setState(() {
                                  firstMove2 = true;
                                  firstMove = false;
                                  firstMove3 = false;
                                  firstMove4 = false;
                                  firstMove5 = false;
                                  firstMove6 = false;
                                  firstMove7 = false;
                                  firstMove8 = false;
                                });
                              }
                          ),
                        ],
                      ),

                      Row(
                        children: <Widget>[

                          Checkbox(
                              value: firstMove3,
                              onChanged: (bool changed){
                                setState(() {
                                  firstMove3 = true;
                                  firstMove2 = false;
                                  firstMove = false;
                                  firstMove4 = false;
                                  firstMove5 = false;
                                  firstMove6 = false;
                                  firstMove7 = false;
                                  firstMove8 = false;
                                });
                              }
                          ),
                          Checkbox(
                              value: firstMove4,
                              onChanged: (bool changed){
                                setState(() {
                                  firstMove4 = true;
                                  firstMove2 = false;
                                  firstMove3 = false;
                                  firstMove = false;
                                  firstMove5 = false;
                                  firstMove6 = false;
                                  firstMove7 = false;
                                  firstMove8 = false;
                                });
                              }
                          )
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Checkbox(
                              value: firstMove5,
                              onChanged: (bool changed){
                                setState(() {
                                  firstMove5 = true;
                                  firstMove2 = false;
                                  firstMove3 = false;
                                  firstMove4 = false;
                                  firstMove = false;
                                  firstMove6 = false;
                                  firstMove7 = false;
                                  firstMove8 = false;
                                });
                              }
                          ),
                          Checkbox(
                              value: firstMove6,
                              onChanged: (bool changed){
                                setState(() {
                                  firstMove6 = true;
                                  firstMove2 = false;
                                  firstMove3 = false;
                                  firstMove4 = false;
                                  firstMove5 = false;
                                  firstMove = false;
                                  firstMove7 = false;
                                  firstMove8 = false;
                                });
                              }
                          ),
                        ],
                      ),

                      Row(
                        children: <Widget>[

                          Checkbox(
                              value: firstMove7,
                              onChanged: (bool changed){
                                setState(() {
                                  firstMove7 = true;
                                  firstMove2 = false;
                                  firstMove3 = false;
                                  firstMove4 = false;
                                  firstMove5 = false;
                                  firstMove6 = false;
                                  firstMove = false;
                                  firstMove8 = false;
                                });
                              }
                          ),
                          Checkbox(
                              value: firstMove8,
                              onChanged: (bool changed){
                                setState(() {
                                  firstMove8 = true;
                                  firstMove2 = false;
                                  firstMove3 = false;
                                  firstMove4 = false;
                                  firstMove5 = false;
                                  firstMove6 = false;
                                  firstMove7 = false;
                                  firstMove = false;
                                });
                              }
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: new RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Team3())
                                  );
                                },
                                color: Colors.blue[800],
                                child: Text('Next', style: TextStyle(color: Colors.white),),
                              )
                          ),

                        ],
                      ),
                    ]
                )
            )
        )
    );
  }
}

class Team3 extends StatefulWidget{

  @override
  TeamState3 createState() => TeamState3();
}

class TeamState3 extends State<Team3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Tele-Operated Period'),
        ),
        body: new Center(
            child: SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: new InputDecoration(labelText: 'Cargo added to the ship...'),
                        keyboardType: TextInputType.number,
                        onChanged: (rRocketText){
                          shipCargo = int.parse(rRocketText);
                        },
                      ),

                      TextField(
                        decoration: new InputDecoration(labelText: 'Hatch panels added to the ship...'),
                        keyboardType: TextInputType.number,
                        onChanged: (rRocketText){
                          shipHatches = int.parse(rRocketText);
                        },
                      ),

                      CheckboxListTile(
                          value: pickup,
                          title: new Text('Bot picked up a piece from the ground?'),
                          activeColor: Colors.blue[600],
                          onChanged: (bool changed4) {
                            setState(() {
                              pickup = changed4;
                            });
                          }
                      ),

                      CheckboxListTile(
                        value: checkValue6,
                        title: new Text('Breakdown?'),
                        activeColor: Colors.teal[200],
                        onChanged: (bool changed6) {
                          setState(() {
                            checkValue6 = changed6;
                          });
                        },
                      ),

                      CheckboxListTile(
                        value: checkValue7,
                        title: new Text('Recovered?'),
                        activeColor: Colors.teal[200],
                        onChanged: (bool changed7) {
                          setState(() {
                            checkValue7 = changed7;
                          });
                        },
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Align(
                              alignment: Alignment.centerLeft,
                              child: new RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Team5())
                                  );
                                },
                                color: Colors.blue[800],
                                child: Text('LR', style: TextStyle(color: Colors.white),),
                              )
                          ),

                          Align(
                              alignment: Alignment.bottomCenter,
                              child: new RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Team4())
                                  );
                                },
                                color: Colors.blue[800],
                                child: Text('Next', style: TextStyle(color: Colors.white),),
                              )
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: new RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Team6())
                                  );
                                },
                                color: Colors.blue[800],
                                child: Text('RR', style: TextStyle(color: Colors.white),),
                              )
                          ),
                        ],
                      ),
                    ]
                )
            )
        )
    );
  }
}

class Team4 extends StatefulWidget{

  @override
  TeamState4 createState() => TeamState4();
}

class TeamState4 extends State<Team4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Endgame'),
        ),
        body: new Center(
            child: SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: new InputDecoration(labelText: 'Climbed to level...'),
                        keyboardType: TextInputType.number,
                        onChanged: (num) {
                          defense = int.parse(num);
                        },
                      ),

                      TextField(
                        decoration: new InputDecoration(labelText: 'Supported another bot...'),
                        keyboardType: TextInputType.number,
                        onChanged: (num) {
                          defense = int.parse(num);
                        },
                      ),

                      TextField(
                        decoration: new InputDecoration(labelText: 'Was helped to level...'),
                        keyboardType: TextInputType.number,
                        onChanged: (num) {
                          defense = int.parse(num);
                        },
                      ),

                      TextField(
                        decoration: new InputDecoration(labelText: 'Defense (Scale 1-3)'),
                        keyboardType: TextInputType.number,
                        onChanged: (num) {
                          defense = int.parse(num);
                        },
                      ),

                      TextField(
                        decoration: new InputDecoration(labelText: 'Number of Fouls'),
                        keyboardType: TextInputType.number,
                        onChanged: (num) {
                          fouls = int.parse(num);
                        },
                      ),
                      RaisedButton(
                        child: new Text('Done', style: TextStyle(color: Colors.white),),
                        color: Colors.red,
                        onPressed: () {
                          addTeamInfo();
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CreateMatch())
                          );
                          setState(() {});
                        },
                      ),
                    ]
                )
            )
        )
    );
  }
}

class Team5 extends StatefulWidget{

  @override
  TeamState5 createState() => TeamState5();
}

class TeamState5 extends State<Team5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Left Rocket'),
        ),
        body: new Center(
            child: SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.topCenter,
                          child: new RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Team3())
                              );
                            },
                            color: Colors.yellow[800],
                            child: Text('Back to Tele-Op', style: TextStyle(color: Colors.white),),
                          )
                      ),



                      Row(
                        children: <Widget>[
                          Checkbox(
                              value: lRocket,
                              onChanged: (bool changed){
                                setState(() {
                                  lRocket = changed;
                                });
                              }
                          ),

                          RaisedButton(
                            child: new Text(lRocketCargo.toString()),
                              onPressed: () {
                              setState(() {
                                lRocketCargo++;
                                if(lRocketCargo==3){
                                  lRocketCargo = 0;
                                }
                              });
                              }
                          ),

                          Checkbox(
                              value: lRocket2,
                              onChanged: (bool changed){
                                setState(() {
                                  lRocket2 = changed;
                                });
                              }
                          ),
                        ],
                      ),



                      Row(
                        children: <Widget>[
                          Checkbox(
                              value: lRocket3,
                              onChanged: (bool changed){
                                setState(() {
                                  lRocket3 = changed;
                                });
                              }
                          ),

                          RaisedButton(
                            child: new Text(lRocketCargo2.toString()),
                              onPressed: () {
                              setState(() {
                                lRocketCargo2++;
                                if(lRocketCargo2==3){
                                  lRocketCargo2 = 0;
                                }
                              });
                              },
                          ),

                          Checkbox(
                              value: lRocket4,
                              onChanged: (bool changed){
                                setState(() {
                                  lRocket4 = changed;
                                });
                              }
                          ),
                        ],
                      ),


                      Row(
                        children: <Widget>[
                          Checkbox(
                              value: lRocket5,
                              onChanged: (bool changed){
                                setState(() {
                                  lRocket5 = changed;
                                });
                              }
                          ),

                          RaisedButton(
                            child: new Text(lRocketCargo3.toString()),
                              onPressed: (){
                              setState(() {
                                lRocketCargo3++;
                                if(lRocketCargo3==3){
                                  lRocketCargo3 = 0;
                                }
                              });
                              }
                          ),

                          Checkbox(
                              value: lRocket6,
                              onChanged: (bool changed){
                                setState(() {
                                  lRocket6= changed;
                                });
                              }
                          ),
                        ],
                      ),
                    ]
                )
            )
        )
    );
  }
}

class Team6 extends StatefulWidget{

  @override
  TeamState6 createState() => TeamState6();
}

class TeamState6 extends State<Team6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Right Rocket'),
        ),
        body: new Center(
            child: SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.topCenter,
                          child: new RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Team3())
                              );
                            },
                            color: Colors.yellow[800],
                            child: Text('Back to Tele-Op', style: TextStyle(color: Colors.white),),
                          )
                      ),

                      TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (rRocketText){
                          rocketT4 = rRocketText;
                        },
                      ),

                      Row(
                        children: <Widget>[
                          Checkbox(
                              value: rRocket,
                              onChanged: (bool changed){
                                setState(() {
                                  rRocket = changed;
                                });
                              }
                          ),

                          Checkbox(
                              value: rRocket2,
                              onChanged: (bool changed){
                                setState(() {
                                  rRocket2 = changed;
                                });
                              }
                          ),
                        ],
                      ),

                      TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (rRocketText2){
                          rocketT5 = rRocketText2;
                        },
                      ),

                      Row(
                        children: <Widget>[
                          Checkbox(
                              value: rRocket3,
                              onChanged: (bool changed){
                                setState(() {
                                  rRocket3 = changed;
                                });
                              }
                          ),

                          Checkbox(
                              value: rRocket4,
                              onChanged: (bool changed){
                                setState(() {
                                  rRocket4 = changed;
                                });
                              }
                          ),
                        ],
                      ),

                      TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (rRocketText3){
                          setState(() {
                            rocketT6 = rRocketText3;
                          });
                        },
                      ),

                      Row(
                        children: <Widget>[
                          Checkbox(
                              value: rRocket5,
                              onChanged: (bool changed){
                                setState(() {
                                  rRocket5 = changed;
                                });
                              }
                          ),

                          Checkbox(
                              value: rRocket6,
                              onChanged: (bool changed){
                                setState(() {
                                  rRocket6= changed;
                                });
                              }
                          ),
                        ],
                      ),
                    ]
                )
            )
        )
    );
  }
}


showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("No, take me back!"),
    onPressed:  () {
      Navigator.of(context).pop();
    },
  );
  Widget continueButton = FlatButton(
    child: Text("Yes, go away."),
    onPressed:  () {
      writeFile();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Wait..."),
    content: Text("Are you absolutely sure you want to upload this data sheet? Remember, this is for marks, and accurate data heavily benefits our team's success."),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

// use interger use int++, if int = 3, int = 0