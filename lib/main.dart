import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Flutter',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//declarre myContorler
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Learn Flutter'),
        backgroundColor: Colors.amber[200],
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.arrow_forward, color: Colors.white),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
            },
          )
        ],
      ),

//textfield
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),

//add floating action btton
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(myController.text),
                );
              });
        },
        tooltip: 'show text value',
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Dua'),
          backgroundColor: Colors.red,

          // actions: <Widget>[
          //   new IconButton(
          //     icon: Icon(Icons.home),
          //     onPressed: (){
          //       Navigator.pop(context);
          //     },
          //   )
          // ],
        ),
        body: Column(
          children: <Widget>[
            new Card(
              child: new Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //mainAxisAlignment: MainAxisAlignment.start,
                //mainAxisSize: MainAxisSize.max,

                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text('MainAxisAlignment.spaceAround'),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Icon(Icons.business_center,
                          color: Colors.green, size: 40.0),
                      new Icon(Icons.spellcheck,
                          color: Colors.green, size: 40.0),
                      new Icon(Icons.accessible,
                          color: Colors.green, size: 40.0),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text('MainAxisAlignment.spaceEvenly'),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Icon(Icons.apps, color: Colors.green, size: 40.0),
                      new Icon(Icons.home, color: Colors.green, size: 40.0),
                      new Icon(Icons.apps, color: Colors.green, size: 40.0),
                    ],
                  ),
                ],
              ),
            ),
            new Card(

            child: new Column(
              
              children: <Widget>[
                
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,

                    children: <Widget>[
                      
                                      IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.red,
                          onPressed: (){
                            Fluttertoast.showToast(msg: 'ini kembali',
                            toastLength: Toast.LENGTH_LONG,
                            backgroundColor: Colors.grey,
                            textColor: Colors.black);
                          },),
                    ],
                    
                  )
              ],
            ),
            ),

          new Card(
            child: new Column(
              children: <Widget>[
                new Icon(Icons.arrow_back_ios),
                                new Icon(Icons.arrow_back_ios),
                                                new Icon(Icons.arrow_back_ios)
              ],
            ),
          )


          ],
        )
        // new Image.asset('src/flutter.png'),

        );

    //bottom navbar
    bottomNavigationBar:
    BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: new Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.mail),
          title: new Text('message'),
        ),
        BottomNavigationBarItem(
            icon: new Icon(Icons.person), title: new Text('About us'))
      ],
    );
  }
}
