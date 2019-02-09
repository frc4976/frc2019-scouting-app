import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scouting_app/saveFile.dart';
import 'package:scouting_app/aLotOfVariables.dart';

int numberOfTeams = 0;

bool whateverYouWant = false;

double team1Opacity = 0.0;
double team2Opacity = 0.0;
double team3Opacity = 0.0;
double team4Opacity = 0.0;
double team5Opacity = 0.0;
double team6Opacity = 0.0;

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
                      addTeamInfo();
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
        appBar: AppBar(
          title: Text('New Team'),
        ),
        body: new Center(
          child: Column(
            children: <Widget>[

              TextField(
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
                onChanged: (text) {

                },
              ),

              CheckboxListTile(
                  value: false,
                  activeColor: Colors.blue,
                  title: new Text('Moved during sandstorm?'),
                  onChanged: (bool val){
                    int toNum;
                    if (val = false){
                      toNum = 0;
                    }else{
                      toNum = 1;
                    }
                    RefreshIndicatorState();
                  },
              ),

              CheckboxListTile(
                activeColor: Colors.blue,
                value: whateverYouWant,
                title: new Text('Completed rocket?'),
                onChanged: (bool boolean) {
                  setState(() {
                    whateverYouWant = boolean;
                  });
                },
              ),

              RaisedButton(
                child: new Text('Done'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateMatch())
                  );
                },
              )
            ],
          ),
        )
    );
  }
}

void addTeamInfo(){
  row1[0] = teamNumber1;

  row2[0] = teamNumber2;

  row3[0] = teamNumber3;

  row4[0] = teamNumber4;

  row5[0] = teamNumber5;

  row6[0] = teamNumber6;

}