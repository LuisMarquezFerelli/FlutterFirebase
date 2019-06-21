import 'package:flutter/material.dart';

class BackWheater extends StatelessWidget{

  final gradientBack = new GradientBack();
  final bottomWhiteSpace = new BottomWhiteSpace();
 
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[new GradientBack(), new BottomWhiteSpace()],
    );
  }

}

class GradientBack extends StatelessWidget{

  final linearGradient = new LinearGradient(
    colors: [Color(0xFFFFBB00), Color(0xFFF38c02)],
    begin: const FractionalOffset(1.0,0.1),
    end : const FractionalOffset(1.0,0.9)
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration : new BoxDecoration(gradient: linearGradient),
    );
  }
  
}

class BottomWhiteSpace extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Positioned(
      bottom : 0.0,
      child: new Container(
        color : Colors.white,
        height: 200.0,
        width: MediaQuery.of(context).size.width
      ),
    );
  }

}

class Header extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body : new Stack(
        children: <Widget>[
          new BackWheater(),
          new Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.only(top : 50.0),
            child: new Column(children: <Widget>[
              new Text("Puto", style : const TextStyle(fontSize: 55.0, color : Color(0xFFEBA800), fontWeight: FontWeight.w600))
            ],),
          )
        ])
    );
  }
  
}