import 'package:flutter/material.dart';


class Login extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[new WhiteBackgroud(), new GradientBackground()],
    );
  }
  
}

/* class TopBar extends State<Login>{

  final appBar = AppBar( title : Text('Login') );
  static final emailInput = new Container( margin: EdgeInsets.all(10.0), color: Colors.pink, width: double.infinity, height: 500);
/*   static final emailInput = new Container( child : TextField( decoration: InputDecoration( hintText: "Ingrese su correo", labelText : "Email") ) );
 */  final appBody = Center(child : emailInput );

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar : appBar, body : appBody );
  }

  void showSnack(context){
    final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  FloatingActionButton buildFloatingButton(context){
    return FloatingActionButton(child: Icon(Icons.add), onPressed: () => showSnack(context) );
  }
  
}
 */


class GradientBackground extends StatelessWidget{

  static final strongColor = Color(0xFFF45d27);
  static final lightColor = Color(0xFFF5851F);
  static final radius = BorderRadius.only( bottomLeft: Radius.circular(50));
  final boxElement = new BoxDecoration(gradient: linearGradient, borderRadius: radius);
  static final linearGradient = new LinearGradient(
    colors: [ strongColor, lightColor ],
    begin: Alignment.topCenter,
    end : Alignment.bottomCenter
  );
  
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height/2.5;
    var screenWidth = MediaQuery.of(context).size.width;
    return new Container( decoration : boxElement, height: screenHeight, width: screenWidth );
  }
  
}

class WhiteBackgroud extends StatelessWidget{

 @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var container = Container( color : Colors.white, height: screenHeight, width: screenWidth);

    return new Positioned( bottom : 0.0, child: container );
  }
  
}