import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            _headerImage(),
            _headerText(),
          ],
        ),
        _cookaDescription(),
        _buttonStart(),
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
    image: AssetImage('assets/images/cooka.png'),
  );
}

Container _cookaDescription() {
  return Container(
    margin: EdgeInsets.all(50),
    child: Row(
      children: [
        Flexible(
          child: Column(
            children: [
              Text(
                'All the recipes on your fingertips',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'WorkSans',),
              ),
              //Divider(),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Cooking on Thermomix',
                  style: TextStyle(color: Colors.black54, fontFamily: 'WorkSans',),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Container _headerText() {
  return Container(
    margin: EdgeInsets.all(60),
    alignment: Alignment.topCenter,
    child: Text(
      'Cooka',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Container _buttonStart() {
  return Container(
    margin: EdgeInsets.only(top: 80, bottom: 60, left: 30, right: 30),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromRGBO(251, 201, 61, 1),
        minimumSize: Size(315, 51),
      ),
      child: Text("Let's start", style: TextStyle(fontSize: 18,fontFamily: 'WorkSans'),),
      onPressed: () {},
    ),
  );
}
