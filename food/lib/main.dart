import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/bottom-nav-controller.dart';
import 'package:food/second_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Box box = await Hive.openBox('contact-list');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: GoogleFonts.akayaTelivigalaTextTheme(
              Theme.of(context).textTheme.apply())
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          // scaffoldBackgroundColor: Colors.white,
          // useMaterial3: false,
          ),
      routes: {
        '/splash': (_) => Splash(),
        '/bottomnav': (_) => BottonNavController(),
        '/second': (_) => SecondScreen(),
      },
      initialRoute: '/splash',
    );
  }
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(context,
            CupertinoPageRoute(builder: (_) => BottonNavController())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'E-commarce',
              style: TextStyle(fontSize: 35),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
