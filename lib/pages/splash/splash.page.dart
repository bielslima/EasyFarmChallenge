import './controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashController controller;

  @override
  void initState() {
    super.initState();
    controller = new SplashController();
    controller.verifyIsLogged();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(
              flex: 2,
            ),
            Logo(),
            Spacer(
              flex: 2,
            ),
            SizedBox(
              height: 10,
            ),
            SpinKitThreeBounce(
              color: Colors.white,
              size: Theme.of(context).textTheme.headline6.fontSize,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      child: Image.asset("assets/images/easyfarm-logo-white-2.png"),
    );
  }
}
