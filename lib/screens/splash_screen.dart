import 'dart:math';

import 'package:dcapp/generated/l10n.dart';
import 'package:dcapp/models/splash_model.dart';
import 'package:dcapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:async';

class SplashScreenDC extends StatefulWidget {
  @override
  _SplashScreenDCState createState() => new _SplashScreenDCState();
}

class _SplashScreenDCState extends State<SplashScreenDC> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    Splash _splash = _getSplash();
    return Scaffold(
      body: new InkWell(
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color: _splash.backgroundColor,
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  flex: 2,
                  child: new Container(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: new Container(child: _splash.image),
                            radius: 100.0,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                          ),
                        ],
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(
                        valueColor: new AlwaysStoppedAnimation<Color>(
                            _splash.primaryColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                      Text(AppLocalizations.of(context).creator, style: TextStyle(fontWeight: FontWeight.bold,
                          color: _splash.primaryColor),),
                      Text(AppLocalizations.of(context).copyRight, style: TextStyle(fontWeight: FontWeight.bold,
                          color: _splash.secondColor),)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Splash _getSplash() {
    Splash _superman = new Splash(
        backgroundColor: Color.fromRGBO(2, 88, 233, 1),
        primaryColor: Color.fromRGBO(254, 221, 2, 1),
        secondColor: Color.fromRGBO(0, 0, 0, 1),
        image: Image.asset('assets/images/superman.png'));
    Splash _batman = new Splash(
        backgroundColor: Color.fromRGBO(30, 30, 32, 1),
        primaryColor: Color.fromRGBO(255, 211, 2, 1),
        secondColor: Color.fromRGBO(255, 211, 2, 1),
        image: Image.asset('assets/images/batman.png'));
    Splash _wonderWoman = new Splash(
        backgroundColor: Color.fromRGBO(197, 55, 53, 1),
        primaryColor: Color.fromRGBO(248, 239, 84, 1),
        secondColor: Color.fromRGBO(0, 0, 0, 1),
        image: Image.asset('assets/images/wonder_woman.png'));
    Splash _greenLantern = new Splash(
        backgroundColor: Color.fromRGBO(18, 84, 36, 1),
        primaryColor: Colors.white,
        secondColor: Colors.white,
        image: Image.asset('assets/images/green_lantern.png'));
    Splash _flash = new Splash(
        backgroundColor: Color.fromRGBO(255, 58, 0, 1),
        primaryColor: Color.fromRGBO(255, 194, 1, 1),
        secondColor: Color.fromRGBO(255, 194, 1, 1),
        image: Image.asset('assets/images/flash.png'));
    Splash _aquaman = new Splash(
        backgroundColor: Color.fromRGBO(0, 102, 51, 1),
        primaryColor: Color.fromRGBO(251, 204, 52, 1),
        secondColor: Color.fromRGBO(235, 188, 35, 1),
        image: Image.asset('assets/images/aquaman.png'));
    Splash _cyborg = new Splash(
        backgroundColor: Color.fromRGBO(80, 101, 100, 1),
        primaryColor: Color.fromRGBO(0, 0, 0, 1),
        secondColor: Color.fromRGBO(199, 33, 33, 1),
        image: Image.asset('assets/images/cyborg.png'));
    Splash _martianManhunter = new Splash(
        backgroundColor: Color.fromRGBO(1, 127, 1, 1),
        primaryColor: Color.fromRGBO(0, 0, 0, 1),
        secondColor: Color.fromRGBO(254, 254, 0, 1),
        image: Image.asset('assets/images/martian_manhunter.png'));
    Splash _hawkman = new Splash(
        backgroundColor: Color.fromRGBO(253, 187, 47, 1),
        primaryColor: Color.fromRGBO(0, 0, 0, 1),
        secondColor: Color.fromRGBO(0, 0, 0, 1),
        image: Image.asset('assets/images/hawkman.png'));

    List<Splash> _splashList = List<Splash>();
    _splashList.add(_superman);
    _splashList.add(_batman);
    _splashList.add(_wonderWoman);
    _splashList.add(_greenLantern);
    _splashList.add(_flash);
    _splashList.add(_aquaman);
    _splashList.add(_cyborg);
    _splashList.add(_hawkman);
    _splashList.add(_martianManhunter);

    Random random = new Random();
    int randomNumber = random.nextInt(9) + 0;

    return _splashList.elementAt(randomNumber);
  }
}
