import 'package:flutter/material.dart';
import 'package:scouting_app/saveFile.dart';
import 'package:scouting_app/aLotOfVariables.dart';
import 'package:flutter/services.dart';

int numberOfTeams = 0;

bool whateverYouWant = false;

double team1Opacity = 0.0;
double team2Opacity = 0.0;
double team3Opacity = 0.0;
double team4Opacity = 0.0;
double team5Opacity = 0.0;
double team6Opacity = 0.0;

//EMERGENCY COMMIT

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
                      child: Text('New Match', style: TextStyle(color: Colors.white)),
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
                   Navigator.pop(context);
                  }
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
  RaisedButton btn1 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(teamNumber1));
  RaisedButton btn2 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(teamNumber2));
  RaisedButton btn3 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(teamNumber3));
  RaisedButton btn4 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(teamNumber4));
  RaisedButton btn5 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(teamNumber5));
  RaisedButton btn6 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(teamNumber6));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Match'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: new InputDecoration(
                      labelText: 'Match Number'
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (text2){
                    matchNum = text2;
                  },
                ),
                new Opacity(opacity: team1Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn1),
                )),
                new Opacity(opacity: team2Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn2),
                )),
                new Opacity(opacity: team3Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn3),
                )),
                new Opacity(opacity: team4Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn4),
                )),
                new Opacity(opacity: team5Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn5),
                )),
                new Opacity(opacity: team6Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn6),
                )),

                Center(
                  child: RaisedButton(
                      child: Text(
                        'New Team',
                      ),
                      onPressed: () {
                        setState(() {
                          numberOfTeams++;
                          if (numberOfTeams == 1){
                            team1Opacity = 1.0;
                          }else if (numberOfTeams == 2){
                            team2Opacity = 1.0;
                          }else if (numberOfTeams == 3){
                            team3Opacity = 1.0;
                          }else if (numberOfTeams == 4){
                            team4Opacity = 1.0;
                          }else if (numberOfTeams == 5){
                            team5Opacity = 1.0;
                          }else if (numberOfTeams == 6){
                            team6Opacity = 1.0;
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
                    child: new Text('Done'),
                    onPressed: (){
                      writeFile();
                    }
                  )
                ),
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
      backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          title: Text('New Team'),
        ),
        body: new Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[

                TextField(
                  decoration: new InputDecoration(
                      labelText: 'Team Number'
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (text) {
                    setState(() {
                      if (numberOfTeams == 1){
                        teamNumber1 = text;
                      }else if (numberOfTeams == 2){
                        teamNumber2 = text;
                      }else if (numberOfTeams == 3){
                        teamNumber3 = text;
                      }else if (numberOfTeams == 4){
                        teamNumber4 = text;
                      }else if (numberOfTeams == 5){
                        teamNumber5 = text;
                      }else if (numberOfTeams == 6){
                        teamNumber6 = text;
                      }
                    });
                  },
                ),

                TextField(
                  decoration: new InputDecoration(
                    labelText: '# of null hatches(0-6)'
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (text3) {
                    nullHatches = text3;
                  },
                ),



                CheckboxListTile(
                  value: checkValue,
                  title: new Text('Match win?'),
                  activeColor: Colors.teal[300],
                  onChanged: (bool changed) {
                    setState( () {
                      checkValue = changed;
                    });
                  },
                ),


                CheckboxListTile(
                  value: checkValue2,
                  title: new Text('Moved during sandstorm?'),
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
                    title: new Text('pre-H'),
                    onChanged: (bool changed13) {
                      setState(() {
                        checkValue13 = changed13;
                        checkValue14 = !changed13;
                      });

                    }
                ),

                CheckboxListTile(
                    value: checkValue14,
                    title: new Text('pre-C'),
                    onChanged: (bool changed14){
                      setState(() {
                        checkValue14 = changed14;
                        checkValue13 = !changed14;
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

                Text('Bot Positon'),

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

                    Checkbox(value: false,
                        onChanged: null
                    ),

                    Checkbox(
                      value: checkValue9,
                      onChanged: (bool changed9){
                        setState(() {
                          checkValue9 = true;
                          checkValue8 = false;
                          checkValue10 = false;
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
                      value: checkValue10,
                      onChanged: (bool changed10){
                        setState(() {
                          checkValue10 = true;
                          checkValue9 = false;
                          checkValue8 = false;
                          checkValue11 = false;
                          checkValue12 = false;
                        });
                      },
                    ),
                    Checkbox(
                      value: checkValue11,
                      onChanged: (bool changed11){
                        setState(() {
                          checkValue11 = true;
                          checkValue9 = false;
                          checkValue10 = false;
                          checkValue8 = false;
                          checkValue12 = false;
                        });
                      },
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

                Text('First Move'),

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

                TextField(
                  decoration: new InputDecoration(labelText: 'Climbed to level...'),
                  keyboardType: TextInputType.number,
                  onChanged: (num) {
                    defense = int.parse(num);
                  },
                ),

                TextField(
                  decoration: new InputDecoration(labelText: 'Supported another bot to level...'),
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

                CheckboxListTile(
                    value: successful,
                    title: new Text('were they successful?'),
                    onChanged: (changed) {
                      setState(() {
                        successful = changed;
                      });
                    },
                ),

                Text('Left Rocket'),

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
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (lRocketText){
                        rocketT = lRocketText;
                      },
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
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (lRocketText2){
                       rocketT2 = lRocketText2;
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
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (lRocketText3){
                        setState(() {
                          rocketT3 = lRocketText3;
                        });
                      },
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

                Text('Right Rocket'),

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
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (rRocketText){
                        rocketT4 = rRocketText;
                      },
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
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (rRocketText2){
                        rocketT5 = rRocketText2;
                      },
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
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (rRocketText3){
                        setState(() {
                          rocketT6 = rRocketText3;
                        });
                      },
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



                RaisedButton(
                  child: new Text('Done'),
                  onPressed: () {
                    addTeamInfo();
                    Navigator.pop(
                      context,
                    );
                    setState(() {});
                  },
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


  row1[0] = teamNumber1;
  row2[0] = teamNumber2;
  row3[0] = teamNumber3;
  row4[0] = teamNumber4;
  row5[0] = teamNumber5;
  row6[0] = teamNumber6;

  addData(0,numberOfTeams,text);
  addData(1,numberOfTeams,text2);
  addData(4, numberOfTeams, nullHatches);
  addData(5, numberOfTeams,moved);
  addData(6,numberOfTeams,crossed);
  addData(10,numberOfTeams,success);

  addData(11,numberOfTeams,lRocketlog1);
  addData(17,numberOfTeams,lRocketlog2);
  addData(12,numberOfTeams,lRocketlog3);
  addData(18,numberOfTeams,lRocketlog4);
  addData(13,numberOfTeams,lRocketlog5);
  addData(19,numberOfTeams,lRocketlog6);
  addData(14,numberOfTeams,rocketT);
  addData(15,numberOfTeams,rocketT2);
  addData(16,numberOfTeams,rocketT3);

  addData(22,numberOfTeams,rRocketlog1);
  addData(28,numberOfTeams,rRocketlog2);
  addData(23,numberOfTeams,rRocketlog3);
  addData(29,numberOfTeams,rRocketlog4);
  addData(24,numberOfTeams,rRocketlog5);
  addData(30,numberOfTeams,rRocketlog6);
  addData(25,numberOfTeams,rocketT4);
  addData(26,numberOfTeams,rocketT5);
  addData(27,numberOfTeams,rocketT6);
  //todo numbers

  addData(31,numberOfTeams,breakdown);
  addData(32,numberOfTeams,recover);


  if (checkValue3==true&&checkValue4==false){
    addData(2,numberOfTeams,'red');
  }else if(checkValue4==true&&checkValue3==false){
    addData(2,numberOfTeams,'blue');
  }

  if (checkValue8==true){
    addData(3,numberOfTeams,'21');
  }else if(checkValue9==true){
    addData(3,numberOfTeams,'23');
  }else if(checkValue10==true){
    addData(3,numberOfTeams,'11');
  }else if(checkValue11==true){
    addData(3,numberOfTeams,'12');
  }else if(checkValue12==true){
    addData(3,numberOfTeams,'13');
  }

  if (checkValue6){
    addData(31, numberOfTeams, "1");
  }else{
    addData(31, numberOfTeams, "0");
  }

  if (checkValue7){
    addData(32, numberOfTeams, "1");
  }else{
    addData(32, numberOfTeams, "0");
  }

  if (pickup){
    addData(33, numberOfTeams, "1");
  }else{
    addData(33, numberOfTeams, "0");
  }

  addData(34, numberOfTeams, self.toString());
  addData(35, numberOfTeams, supported.toString());
  addData(36, numberOfTeams, helped.toString());
  addData(37, numberOfTeams, defense.toString());
  addData(38, numberOfTeams, fouls.toString());

  if (red){
    addData(39, numberOfTeams, "1");
  }else{
    addData(39, numberOfTeams, "0");
  }

  if (yellow){
    addData(40, numberOfTeams, "1");
  }else{
    addData(40, numberOfTeams, "0");
  }

  addData(41, numberOfTeams, score.toString());

  if(firstMove==true){
    addData(9,numberOfTeams,'a');
  }else if(firstMove2==true){
    addData(9,numberOfTeams,'b');
  }else if(firstMove3==true){
    addData(9,numberOfTeams,'c');
  }else if(firstMove4==true){
    addData(9,numberOfTeams,'d');
  }else if(firstMove5==true){
    addData(9, numberOfTeams,'e');
  }else if(firstMove6==true){
    addData(9,numberOfTeams,'f');
  }else if(firstMove7==true){
    addData(9,numberOfTeams,'g');
  }else if(firstMove8==true){
    addData(9,numberOfTeams,'h');
  }

  if (checkValue13==true&&checkValue14==false){
    addData(7, numberOfTeams, '1');
    addData(8,numberOfTeams,'0');
  }else if (checkValue14==true&&checkValue13==false){
    addData(7, numberOfTeams, '0');
    addData(8,numberOfTeams,'1');
  }

}

