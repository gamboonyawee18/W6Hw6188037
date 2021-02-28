import 'package:flutter/material.dart';
import 'package:hw6/dogdetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Pet shop'),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: Card(
                    color: Colors.purple[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8,
                    child: InkWell(
                      onTap:  () {
                        Navigator.push(context,MaterialPageRoute(builder: (context){
                          return MyApp2();
                        },
                        ),
                        );
                      },
                      child: Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/dog/corgi.jpg'),
                          ),
                          title: Text('Corgi'),
                          subtitle: Text('Price: 16,000฿'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: Card(
                    color: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8,
                    child: InkWell( onTap:  () {
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return MyApp3();
                      },),);
                    },
                      child: Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/dog/golden.jpg'),
                          ),
                          title: Text('Golden Retriever'),
                          subtitle: Text('Price: 7,000฿'),
                        ),
                      )
                      ,)
                    ,
                  ),
                ),
              ),

              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: Card(
                    color: Colors.lightGreen[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8,
                    child: InkWell(
                      onTap:  () {
                        Navigator.push(context,MaterialPageRoute(builder: (context){
                          return MyApp4();
                        },),);
                      },
                      child: Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/dog/poodle.jpg'),
                          ),
                          title: Text('Poodle'),
                          subtitle: Text('Price: 6,500฿'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: Card(
                    color: Colors.yellow[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8,
                    child: InkWell(
                      onTap:  () {
                        Navigator.push(context,MaterialPageRoute(builder: (context){
                          return MyApp5();
                        },),);
                      },
                      child: Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/dog/samoyed.jpg'),
                          ),
                          title: Text('Samoyed'),
                          subtitle: Text('Price: 120,000฿'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: Card(
                    color: Colors.pink[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8,
                    child: InkWell(
                      onTap:  () {
                        Navigator.push(context,MaterialPageRoute(builder: (context){
                          return MyApp6();
                        },),);
                      },
                      child: Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/dog/chao chao.jpg'),
                          ),
                          title: Text('Chao chao'),
                          subtitle: Text('Price: 40,000฿'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*dogdetail.dart
import 'package:flutter/material.dart';
import 'package:hw6/paytotal.dart';

int total =  0;
int price1 = 16000;
int price2 = 7000;
int price3 = 6500;
int price14 = 120000;
int price15 = 40000;
class MyApp2 extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to the shop'),

      ),
      body: Center(

        child:
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/dog/corgi.jpg'),
            Text('Corgi puppy \nPrice: 16,000฿',textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal
              ),
            ),

            RaisedButton(
              onPressed: () => {
                total += price1
              },
              color: Colors.lightGreen[700],
              child: Text('Buy', style: TextStyle(color: Colors.white,fontSize: 15)),
            ),

            RaisedButton(
              onPressed: () => {
                total -= price1
              },
              color: Colors.deepOrange[400],
              child: Text('Cancel', style: TextStyle(color: Colors.white,fontSize: 15)),
            ),

            Text('total Price: $total'),

            RaisedButton(
              onPressed: () => {
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return Cart1('$total');
                },),)
              },
              color: Colors.blue[800],
              child: Text('Pay', style: TextStyle(color: Colors.white,fontSize: 20)),
            ),

          ],
        ),
      ),


    );
  }
}

class MyApp3 extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to the shop'),
      ),
      body: Center(

          child:
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/dog/golden.jpg'),
              Text('Golden Retriever\nPrice: 7,000฿',textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal
                ),
              ),

              RaisedButton(
                onPressed: () => {
                  total += price2
                },
                color: Colors.lightGreen[700],
                child: Text('Buy', style: TextStyle(color: Colors.white,fontSize: 15)),
              ),

              RaisedButton(
                onPressed: () => {
                  total -= price2
                },
                color: Colors.deepOrange[400],
                child: Text('Cancel', style: TextStyle(color: Colors.white,fontSize: 15)),
              ),

              Text('total Price: $total'),

              RaisedButton(
                onPressed: () => {
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return Cart1('$total');
                  },),)
                },
                color: Colors.blue[800],
                child: Text('Pay', style: TextStyle(color: Colors.white,fontSize: 20)),
              ),

            ],
          )
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to the shop'),
      ),
      body: Center(

          child:
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/dog/poodle.jpg'),
              Text('Poodle\nPrice: 6,500฿',textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal
                ),
              ),

              RaisedButton(
                onPressed: () => {
                  total += price3
                },
                color: Colors.lightGreen[700],
                child: Text('Buy', style: TextStyle(color: Colors.white,fontSize: 15)),
              ),

              RaisedButton(
                onPressed: () => {
                  total -= price3
                },
                color: Colors.deepOrange[400],
                child: Text('Cancel', style: TextStyle(color: Colors.white,fontSize: 15)),
              ),

              Text('total Price: $total'),

              RaisedButton(
                onPressed: () => {
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return Cart1('$total');
                  },),)
                },
                color: Colors.blue[800],
                child: Text('Pay', style: TextStyle(color: Colors.white,fontSize: 20)),
              ),

            ],
          )
      ),
    );
  }
}

class MyApp5 extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to the shop'),
      ),
      body: Center(

          child:
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/dog/samoyed.jpg'),
              Text('Samoyed \nPrice: 120,000฿',textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal
                ),
              ),

              RaisedButton(
                onPressed: () => {
                  total += price14
                },
                color: Colors.lightGreen[700],
                child: Text('Buy', style: TextStyle(color: Colors.white,fontSize: 15)),
              ),

              RaisedButton(
                onPressed: () => {
                  total -= price14
                },
                color: Colors.deepOrange[400],
                child: Text('Cancel', style: TextStyle(color: Colors.white,fontSize: 15)),
              ),

              Text('total Price: $total'),

              RaisedButton(
                onPressed: () => {
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return Cart1('$total');
                  },),)
                },
                color: Colors.blue[800],
                child: Text('Pay', style: TextStyle(color: Colors.white,fontSize: 20)),
              ),

            ],
          )
      ),
    );
  }
}


class MyApp6 extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to the shop'),
      ),
      body: Center(

          child:
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/dog/chao chao.jpg'),
              Text('Chao chao\nPrice: 40,000฿',textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal
                ),
              ),

              RaisedButton(
                onPressed: () => {
                  total += price15
                },
                color: Colors.lightGreen[700],
                child: Text('Buy', style: TextStyle(color: Colors.white,fontSize: 15)),
              ),

              RaisedButton(
                onPressed: () => {
                  total -= price15
                },
                color: Colors.deepOrange[400],
                child: Text('Cancel', style: TextStyle(color: Colors.white,fontSize: 15)),
              ),

              Text('total Price: $total'),

              RaisedButton(
                onPressed: () => {
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return Cart1('$total');
                  },),)
                },
                color: Colors.blue[800],
                child: Text('Pay', style: TextStyle(color: Colors.white,fontSize: 20)),
              ),

            ],
          )
      ),
    );
  }
}
*/

/*paytotal.dart
import 'package:flutter/material.dart';

import 'dogdetail.dart';

class Cart1 extends StatelessWidget {
  Cart1(String s);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Back'),


      ),
      body: Center(

          child: Column(
            //alignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('\nTotal price: $total',textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal
                ),
              ),

              RaisedButton(
                onPressed: () => {
                  total -= total
                },
                color: Colors.red[200],
                child: Text('Detail', style: TextStyle(color: Colors.white,fontSize: 20)),
              ),


            ],
          )
      ),
    );
  }
}
*/