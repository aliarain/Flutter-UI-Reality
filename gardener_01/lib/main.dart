import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gardener_01/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //backgroundColor: Color(0xffE3F6FF),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        width: 1,
        color: Color(0xff5F40D4).withOpacity(0.19),
      ),
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE3F6FF),
        body: ListView(
          dragStartBehavior: DragStartBehavior.start,
          children: <Widget>[
            Container(
              //color: Color(0xffE3F6FF),
              alignment: Alignment.topCenter,
              height: 450.0,
              width: 1000.0,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: new BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/gardener.png'))),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              height: 500.0,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 0.0),
                  child: Column(
                    children: <Widget>[
                      Spacer(flex: 2),
                      Container(
                          height: 120.0,
                          width: 1000.0,
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text(
                                    'Find a',
                                    style: new TextStyle(
                                      fontSize: 40.0,
                                      color:
                                          Color(0xffFFA800).withOpacity(0.85),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Gardener',
                                  style: TextStyle(
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff5F40D4).withOpacity(0.85),
                                  ),
                                )
                              ],
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 55.0, bottom: 50.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: myBoxDecoration(),
                              height: 62.0,
                              width: 200.0,
                              child: MaterialButton(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 30.0),
                                  child: Text(
                                    'Search for gardeners',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff5F40D4).withOpacity(0.5),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              new SearchPage()));
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: IconButton(
                                color: Color(0xffFFA800),
                                icon: Icon(
                                  FontAwesomeIcons.slidersH,
                                  size: 18.0,
                                ),
                                tooltip: 'Fliters',
                                onPressed: () {},
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Container(
                                  child: Text(
                                'Fliters',
                                style: TextStyle(color: Color(0xffFFA800)),
                              )),
                            )
                          ],
                        ),
                      ),
                      Spacer(flex: 11),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
