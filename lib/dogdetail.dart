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