import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Lottie.asset(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
              'assets/lottie/background.json',
              repeat: true,
              animate: true,
            ),
            SafeArea(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          flex: 1,
                          child: FittedBox(
                            child: Text(
                              'Raspberry PI',
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 3,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Icon(FontAwesomeIcons.raspberryPi,
                              size: 60, color: Colors.white),
                        ),
                        Flexible(
                          flex: 1,
                          child: FittedBox(
                            child: Text(
                              'Raspbian',
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 3,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(45.0),
                      child: AnalogClock(
                        isLive: true,
                        hourHandColor: Colors.white,
                        minuteHandColor: Colors.white,
                        showSecondHand: true,
                        numberColor: Colors.white,
                        showNumbers: true,
                        showAllNumbers: true,
                        textScaleFactor: 1.6,
                        // showTicks: true,
                        showDigitalClock: true,
                        digitalClockColor: Colors.white.withOpacity(0.4),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Text(
                          'Yassine Ikken Ikkene',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 3,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Jose Miguel Ramos Vega',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 3,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Mimoune Mahyaoui',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 3,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      theme: ThemeData(textTheme: GoogleFonts.anonymousProTextTheme()),
    );
  }
}
