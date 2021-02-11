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
        fontFamily: 'Lato',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Fusion')),
        ),
        body: Container(),
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
