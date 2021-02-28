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