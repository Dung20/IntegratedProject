import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




Color getColorFromHex(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll('#', '');

  if (hexColor.length == 6) {
    hexColor = 'FF' + hexColor;
  }

  return Color(int.parse(hexColor, radix: 16));
}


final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: new AppBar(
        title: Text("Back"),
        backgroundColor: getColorFromHex("8DD8EF"),
        automaticallyImplyLeading: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            tooltip: 'back',
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          Myspace(),
          Fname(),Myspace(),
          Lname(),Myspace(),
          mobileNum(),Myspace(),
          Email(),Myspace(),
          Password(),Myspace(),
            SignInButton(),Myspace()
        ],
      ),
    ));
  }
}
  Widget Fname() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 250.0,
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'First Name',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
Widget Lname() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Container(
      width: 250.0,
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'Last Name',
          border: OutlineInputBorder(),
        ),
      ),
    ),
  ],
);
Widget mobileNum() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Container(
      width: 250.0,
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          labelText: 'Mobile number',
          border: OutlineInputBorder(),
        ),
      ),
    ),
  ],
);
Widget Email() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Container(
      width: 250.0,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder(),
        ),
      ),
    ),
  ],
);
Widget Password() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Container(
      width: 250.0,
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          border: OutlineInputBorder(),
        ),
      ),
    ),
  ],
);
Widget Myspace(){
  return SizedBox(height: 20);
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
        onPressed: () {},
      ));
}
