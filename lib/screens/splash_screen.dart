import 'dart:math';

import 'package:dcapp/generated/l10n.dart';
import 'package:dcapp/models/splash_model.dart';
import 'package:dcapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:splashscreen/splashscreen.dart';

class SplashScreenDC extends StatefulWidget {
  @override
  _SplashScreenDCState createState() => new _SplashScreenDCState();
}

class _SplashScreenDCState extends State<SplashScreenDC> {
  static Splash _superman = new Splash(
      backgroundColor: Color.fromRGBO(2, 88, 233, 1),
      primaryColor: Color.fromRGBO(254, 0, 0, 1),
      secondColor: Color.fromRGBO(254, 221, 2, 1),
      image: Image.asset('assets/images/superman.png'));
  static Splash _batman = new Splash(
      backgroundColor: Color.fromRGBO(30, 30, 32, 1),
      primaryColor: Color.fromRGBO(255, 211, 2, 1),
      secondColor: Color.fromRGBO(255, 211, 2, 1),
      image: Image.asset('assets/images/batman.png'));
  static Splash _wonderWoman = new Splash(
      backgroundColor: Color.fromRGBO(197, 55, 53, 1),
      primaryColor: Color.fromRGBO(248, 239, 84, 1),
      secondColor: Color.fromRGBO(0, 0, 0, 1),
      image: Image.asset('assets/images/wonder_woman.png'));
  static Splash _greenLantern = new Splash(
      backgroundColor: Color.fromRGBO(0, 149, 65, 1),
      primaryColor: Colors.white,
      secondColor: Colors.white,
      image: Image.asset('assets/images/green_lantern.png'));
  static Splash _flash = new Splash(
      backgroundColor: Color.fromRGBO(255, 58, 0, 1),
      primaryColor: Color.fromRGBO(255, 194, 1, 1),
      secondColor: Color.fromRGBO(255, 194, 1, 1),
      image: Image.asset('assets/images/flash.png'));
  static Splash _aquaman = new Splash(
      backgroundColor: Color.fromRGBO(0, 102, 51, 1),
      primaryColor: Color.fromRGBO(251, 204, 52, 1),
      secondColor: Color.fromRGBO(235, 188, 35, 1),
      image: Image.asset('assets/images/aquaman.png'));
  static Splash _cyborg = new Splash(
      backgroundColor: Color.fromRGBO(174, 189, 196, 1),
      primaryColor: Color.fromRGBO(0, 0, 0, 1),
      secondColor: Color.fromRGBO(242, 81, 29, 1),
      image: Image.asset('assets/images/cyborg.png'));
  static Splash _martianManhunter = new Splash(
      backgroundColor: Color.fromRGBO(1, 127, 1, 1),
      primaryColor: Color.fromRGBO(254, 0, 0, 1),
      secondColor: Color.fromRGBO(254, 254, 0, 1),
      image: Image.asset('assets/images/martian_manhunter.png'));
  static Splash _hawkman = new Splash(
      backgroundColor: Color.fromRGBO(253, 187, 47, 1),
      primaryColor: Color.fromRGBO(0, 0, 0, 1),
      secondColor: Color.fromRGBO(0, 0, 0, 1),
      image: Image.asset('assets/images/hawkman.png'));

  @override
  Widget build(BuildContext context) {
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

    Splash _splash = _splashList.elementAt(randomNumber);
    debugPrint('movieTitle: $randomNumber');
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new HomeScreen(),
      image: _splash.image,
      backgroundColor: _splash.backgroundColor,
      photoSize: 100.0,
      onClick: () => print("Flutter Egypt"),
      loaderColor: _splash.primaryColor,
      loadingText: Text.rich(TextSpan(children: [
        TextSpan(
            text: AppLocalizations.of(context).creator,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: _splash.primaryColor)),
        TextSpan(
            text: AppLocalizations.of(context).copyRight,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: _splash.secondColor))
      ])),
    );
  }
}
