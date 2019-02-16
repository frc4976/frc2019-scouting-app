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

bool firstMove = false;
bool firstMove2 = false;
bool firstMove3 = false;
bool firstMove4 = false;
bool firstMove5 = false;
bool firstMove6 = false;
bool firstMove7 = false;
bool firstMove8 = false;


String colour1;
String colour2;
String colour3;
String colour4;
String colour5;
String colour6;

String text;
String text2;


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
                TextField(
                  onChanged: (text) {

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
                      checkValue13 = changed13;
                      checkValue14 = !changed13;
                    }
                ),

                CheckboxListTile(
                    value: checkValue14,
                    title: new Text('pre-C'),
                    onChanged: (bool changed14){
                      checkValue14 = changed14;
                      checkValue13 = !changed14;
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

  row1[0] = teamNumber1;
  row2[0] = teamNumber2;
  row3[0] = teamNumber3;
  row4[0] = teamNumber4;
  row5[0] = teamNumber5;
  row6[0] = teamNumber6;

  addData(0,numberOfTeams,text);
  addData(1,numberOfTeams,text2);
  addData(5, numberOfTeams,moved);
  addData(6,numberOfTeams,crossed);

  addData(30,numberOfTeams,breakdown);
  addData(31,numberOfTeams,recover);


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

  if(firstMove==true){

  }else if(firstMove2==true){

  }else if(firstMove3==true){

  }else if(firstMove4==true){

  }else if(firstMove5==true){

  }else if(firstMove6==true){

  }else if(firstMove7==true){

  }else if(firstMove8==true){

  }//TODO

  if (checkValue13==true&&checkValue14==false){
    addData(7, numberOfTeams, '1');
    addData(8,numberOfTeams,'0');
  }else if (checkValue14==true&&checkValue13==false){
    addData(7, numberOfTeams, '0');
    addData(8,numberOfTeams,'1');
  }

}

