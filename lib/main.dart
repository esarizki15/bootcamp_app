import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bootcamp_app/ui/login.dart';
import 'package:bootcamp_app/ui/mainMenu.dart';
import 'package:bootcamp_app/ui/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'BootcampApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/loginPage',
      onGenerateRoute: _generateRoute,
    );
  }

  Route _generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/homePage':
        return MaterialPageRoute(builder: (context) => MainMenuPage());
        break;
      case '/loginPage':
        return MaterialPageRoute(builder: (context) => LoginPage());
        break;
      case '/registerPage':
        return MaterialPageRoute(builder: (context) => RegisterPage());
        break;
      default:
        return MaterialPageRoute(builder: (context) => LoginPage());
    }
  }
}
