import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:script/screens/bottom_navigation.dart';
// import 'package:script/screens/result_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09),
          child: Align(
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
               
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4),
                      DefaultTextStyle(
                        style: TextStyle(
                          color: Color.fromARGB(255, 24, 2, 102),
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          isRepeatingAnimation: true,
                          animatedTexts: [
                            TypewriterAnimatedText('UPLOAD'),
                            TypewriterAnimatedText('EVALUATE'),
                            TypewriterAnimatedText('GET RESULT'),
                            TypewriterAnimatedText('SCRIPT EVALUATION'),
                          ],
                        ),
                      ),
        
                    ],
                  ),
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
