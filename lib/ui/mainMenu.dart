import 'package:flutter/material.dart';
import 'package:bootcamp_app/ui/home.dart';
// import 'package:bootcamp_app/ui/login.dart';
// import 'package:bootcamp_app/ui/register.dart';

class MainMenuPage extends StatefulWidget {
  MainMenuPage({Key key}) : super(key: key);
  @override
  _MainMenuPageState createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  children() {
    switch (_selectedIndex) {
      case 0:
        return MyHomePage();
        break;
      // case 1:
      //   return LoginPage();
      //   break;
      // case 2:
      //   return RegisterPage();
      //   break;
      default:
        return MyHomePage();
        break;
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: DefaultTabController(
            length: 1,
            child: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    backgroundColor: Color(0xFF011F21),
                    icon: Image.asset(
                      'assets/house.png',
                      width: 25,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Color(0xFF011F21),
                    icon: Image.asset(
                      'assets/magnifyingGlass.png',
                      width: 25,
                    ),
                    title: Text(
                      'Cari',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  // 2
                  BottomNavigationBarItem(
                    backgroundColor: Color(0xFF011F21),
                    icon: Image.asset(
                      'assets/calendar.png',
                      width: 25,
                    ),
                    title: Text(
                      'Jadwal',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  BottomNavigationBarItem(
                    backgroundColor: Color(0xFF011F21),
                    icon: Image.asset(
                      'assets/user.png',
                      width: 25,
                    ),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
                currentIndex: _selectedIndex > 4 ? 0 : _selectedIndex,
                selectedItemColor: const Color(0xFFEE2D36),
                onTap: _onItemTapped,
              ),
              backgroundColor: Colors.grey,
              body: children(),
            )),
      ),
    ));
  }
}
