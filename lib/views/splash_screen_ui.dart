// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_share_app/views/home_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 165, 165),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/money_share_logo.png',
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  'แชร์เงินกันเถอะ V.1.0',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.width * 0.09,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                CircularProgressIndicator(
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Created by : 6XXXXXXXXXXX',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.width * 0.045,
                    color: Color.fromARGB(255, 224, 79, 95),
                  ),
                ),
                Text(
                  'Southeast Asia University',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.width * 0.045,
                    color: Color.fromARGB(255, 224, 79, 95),
                  ),
                ),
                Text(
                  'Copyright © 2023',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.width * 0.045,
                    color: Color.fromARGB(255, 224, 79, 95),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
