import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import './di/injectable.dart' as di;
import 'route/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xFF629b60),
        ),
        builder: (context, widget) {
          return ExtendedNavigator<AppRouter>(router: AppRouter());
        },
      ),
    );
  }
}
