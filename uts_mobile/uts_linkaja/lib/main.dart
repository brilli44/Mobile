import 'package:flutter/material.dart';
import 'dart:async';
import 'screens/home_screen.dart';
import 'screens/history_screen.dart';
import 'screens/account_screen.dart';
import 'screens/pay_screen.dart'; // Tambahkan untuk layar Pay
import 'screens/inbox_screen.dart'; // Tambahkan untuk layar Inbox
import 'widgets/bottom_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkAja',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(), // Ganti home dengan SplashScreen
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MainApp()), // Arahkan ke MainApp setelah splash
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/linkaja.png'), // Ganti dengan logo LinkAja Anda
            SizedBox(height: 20),
            Text(
              'Selamat Datang di LinkAja!',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    HistoryScreen(),
    PayScreen(),   // Buat file ini
    InboxScreen(), // Buat file ini
    AccountScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      if (index >= 0 && index < _screens.length) {
        _currentIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
