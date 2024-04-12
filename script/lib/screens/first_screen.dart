import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:script/screens/bottom_navigation.dart';
import 'package:script/screens/result_screen.dart';

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
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.55),
                      Padding(
                        padding: EdgeInsets.only(left: 1, right: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 170,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color.fromARGB(
                                                255, 243, 220, 9),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    Text(
                                      'OPERATING INSTRUCTIONS',
                                      style: TextStyle(
                                          fontSize: 19, color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'The following steps outline how to navigate the app efficiently',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1),
                            Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  'Course Of Action',
                                  style: TextStyle(color: Colors.grey),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      Padding(
                        padding: EdgeInsets.only(left: 1, right: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 35),
                              child: Text(
                                'Evaluvate',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              height: 170,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color.fromARGB(
                                                255, 243, 220, 9),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    Text(
                                      'QUESTION',
                                      style: TextStyle(
                                          fontSize: 19, color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      '1.One Question Evaluvate',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      Padding(
                        padding: EdgeInsets.only(left: 1, right: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 170,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color.fromARGB(
                                                255, 243, 220, 9),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    Text(
                                      'SCRIPT',
                                      style: TextStyle(
                                          fontSize: 19, color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'The following steps outline how to navigate the app efficiently',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1),
                            Text(
                              'Evaluvate',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      Padding(
                        padding: EdgeInsets.only(left: 1, right: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 35),
                              child: Text(
                                'Evaluvate',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              height: 170,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color.fromARGB(
                                                255, 243, 220, 9),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    Text(
                                      'EXAM',
                                      style: TextStyle(
                                          fontSize: 19, color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'The following steps outline how to navigate the app efficiently',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 1,
                          right: 1,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 170,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color.fromARGB(
                                                255, 243, 220, 9),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    Text(
                                      'RESULT',
                                      style: TextStyle(
                                          fontSize: 19, color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'The following steps outline how to navigate the app efficiently',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1),
                            Text(
                              'Result',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      Padding(
                        padding: EdgeInsets.only(left: 1, right: 1, bottom: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 35),
                              child: Text(
                                'Result',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              height: 170,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: const Color.fromARGB(
                                                255, 243, 220, 9),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    Text(
                                      'RESULT',
                                      style: TextStyle(
                                          fontSize: 19, color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'The following steps outline how to navigate the app efficiently',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.95,
                  left: MediaQuery.of(context).size.width / 2,
                  right: MediaQuery.of(context).size.width / 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 2,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height *
                      0.98, // Adjust position as needed
                  left: MediaQuery.of(context).size.width * 0.46,

                  child: Column(
                    children: [
                      // Adjust spacing as needed
                      Container(
                        width: 30, // Adjust size as needed
                        height: 30, // Adjust size as needed
                         child:SvgPicture.asset(
                              'assets/images/svg0.svg',
                             fit: BoxFit.cover,
                            ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white, // Adjust color as needed
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height *
                              0.19), // Adjust spacing as needed
                      Container(
                        width: 30, // Adjust size as needed
                        height: 30, // Adjust size as needed
                         child:SvgPicture.asset(
                              'assets/images/svg5.svg',
                             fit: BoxFit.cover,
                            ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red, // Adjust color as needed
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height *
                              0.23), // Adjust spacing as needed
                      Container(
                        width: 30, // Adjust size as needed
                        height: 30, // Adjust size as needed
                         child:SvgPicture.asset(
                              'assets/images/svg4.svg',
                             fit: BoxFit.cover,
                            ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red, // Adjust color as needed
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height *
                              0.23), // Adjust spacing as needed
                      Container(
                        width: 30, // Adjust size as needed
                        height: 30, 
                         child:SvgPicture.asset(
                              'assets/images/svg3.svg',
                             fit: BoxFit.cover,
                            ),// Adjust size as needed
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red, // Adjust color as needed
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height *
                              0.23), // Adjust spacing as needed
                      Container(
                        width: 30, // Adjust size as needed
                        height: 30, 
                         child:SvgPicture.asset(
                              'assets/images/svg2.svg',
                             fit: BoxFit.cover,
                            ),// Adjust size as needed
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red, // Adjust color as needed
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height *
                              0.23), // Adjust spacing as needed
                      Container(
                        width: 30, // Adjust size as needed
                        height: 30,
                        child:SvgPicture.asset(
                              'assets/images/svg1.svg',
                             fit: BoxFit.cover,
                            ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red, // Adjust color as needed
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
