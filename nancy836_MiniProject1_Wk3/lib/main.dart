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
          
          title: Center(child: Text('Fusion',
          //styling title text
          style: TextStyle( fontFamily: 'cursive',
          fontSize: 30,
          fontWeight: FontWeight.w300 ))),
          actions: <Widget>[
          IconButton(icon: Icon(Icons.search)
          )
        ],
        ),
        drawer: Drawer(
          child:ListView(
            children:<Widget> [
              UserAccountsDrawerHeader(accountName: Text('Luna Keza'),
               accountEmail: Text('lunakeza@gmail.com'),
               currentAccountPicture: CircleAvatar(
                 backgroundImage: AssetImage("assets/profile.jpg"),),
              decoration:BoxDecoration(
                color:Colors.red[300] ,
                ),
                ),

            ],
             ),
             ),

        body: Container(),
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
