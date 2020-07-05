import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'signup.dart';

void main() => runApp(new MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
Widget build(BuildContext context) {
  return Image(
    image: AssetImage(
      "graphics/background.png",
    ),
    width: 200,
    height: 200,
    alignment: Alignment.center,
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Color getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }

    return Color(int.parse(hexColor, radix: 16));
  }
  Widget showLogo() {
    return Image.asset("images/csc291logo1.png");
  }
  Widget SignInButton(){
     return ButtonTheme(
         minWidth: 350.0,
         height: 50.0,
         child:RaisedButton(
       color: getColorFromHex("8DD8EF"),
       child: Text("Sign In",style: TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.bold,
           fontSize: 20.0,
           fontFamily: 'Montserrat'),),
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0)),
       onPressed: () {
         },
    ));
  }
  Widget SignupButton(){
    return ButtonTheme(
        minWidth: 350.0,
        height: 50.0,
        child:RaisedButton(
          color: getColorFromHex("8DD8EF"),
          child: Text("Sign Up",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: 'Montserrat'),),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0)),
          onPressed: () {
            Navigator.pushNamed(context, '/signup');
          },
        ));
  }


  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            showLogo(),
            Container(
                child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  margin: EdgeInsets.only(left: 0,top: 0.0,right: 0,bottom: 70.0),
                  child: Text('Trash Winner',
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold)),
                )
              ],
            )),
            SignInButton(),Padding(
                padding: EdgeInsets.only(top: 45),
            child: SignupButton())],
        ))));
  }
}
