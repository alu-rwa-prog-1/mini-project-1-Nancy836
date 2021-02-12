//importing necessary packages
import 'package:flutter/material.dart';

//main function
void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //defining brightness and colors
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red[300],
        //accentColor:Color.fromRGBO(226, 32, 77, 0.5),

        //defining font family
        fontFamily: 'Raleway',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('Fusion',
                  //styling title text
                  style: TextStyle(
                      fontFamily: 'cursive',
                      fontSize: 30,
                      fontWeight: FontWeight.w600))),
          actions: <Widget>[IconButton(icon: Icon(Icons.search))],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Luna Keza'),
                accountEmail: Text('lunakeza@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.jpg"),
                ),
                decoration: BoxDecoration(
                  color: Colors.red[300],
                ),
              ),
            ],
          ),
        ),

        body: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              Text('Categories',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Georgia',
                      color: Colors.blueGrey[800],
                      fontWeight: FontWeight.w200)),
              //Expanded(
              //child:
              Container(
                padding: EdgeInsets.all(15.0),
                width: 450.0,
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              "assets/smoothie.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text("Smoothies",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Georgia',
                                  color: Colors.blueGrey[800],
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              "assets/juice.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),

                          Text("Juices",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Georgia',
                                  color: Colors.blueGrey[800],
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              "assets/salad.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text("Salads",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Georgia',
                                  color: Colors.blueGrey[800],
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Text('Smoothies of the Day',
                  style: TextStyle(
                      fontSize: 19,
                      fontFamily: 'Georgia',
                      color: Colors.blueGrey[800],
                      fontWeight: FontWeight.w200)),

              Container(
                padding: EdgeInsets.all(15.0),
                width: 500.0,
                height: 300.0,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 140,
                            height: 140,
                            child: Image.asset(
                              "assets/berrynana.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text("BerryNana",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Georgia',
                                  color: Colors.red[300],
                                  fontWeight: FontWeight.w300)),
                          Text("4000 frw",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Georgia',
                                  color: Colors.blueGrey[800],
                                  fontWeight: FontWeight.w100)),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 140,
                            height: 140,
                            child: Image.asset(
                              "assets/green .png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text("Green Delight",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Georgia',
                                  color: Colors.blueGrey[800],
                                  fontWeight: FontWeight.w500)),
                          Text("4500 frw",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Georgia',
                                  color: Colors.blueGrey[800],
                                  fontWeight: FontWeight.w100)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //bottom  navigation bar
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
