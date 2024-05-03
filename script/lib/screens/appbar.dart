import 'package:flutter/material.dart';
import 'package:script/screens/bottom_navigation.dart';
import 'package:script/screens/first_screen.dart';
import 'package:script/screens/result_screen.dart';

class Appbar extends StatefulWidget{
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar>{
  int selectedPageIndex = 0;
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    FirstScreen(),
    NavigationPage(),
    ResultScreen(),
  ];
  void _selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
}
int selectedButtonIndex = -1;
List<Color> buttonColors = [
    Colors.white,
    Colors.white,
    Colors.white,
];
List<Color> textcolor = [
    const Color.fromARGB(255, 59, 59, 59),
    const Color.fromARGB(255, 59, 59, 59),
    const Color.fromARGB(255, 59, 59, 59)
];
  List<Color> bordercolor = [
    Colors.black,
    Colors.black,
    Colors.black,
  ];
void _handleButtonPressed(int index){

    setState(() {
      // Check if the button is already selected
      if (selectedButtonIndex == index) {
        // Reset selected button index and colors
        selectedButtonIndex = -1;
        buttonColors[index] = Colors.white;
        textcolor[index] = const Color.fromARGB(255, 59, 59, 59);
        bordercolor[index] = Colors.black;
        // Reset selected index for navigation
        _selectedIndex = 0;
      } else {
        // Deselect the previously selected button
        if (selectedButtonIndex != -1) {
          buttonColors[selectedButtonIndex] = Colors.white;
          textcolor[selectedButtonIndex] =
              const Color.fromARGB(255, 97, 96, 96);
          bordercolor[selectedButtonIndex] = Colors.black;
        }
        // Set selected button index and color
        selectedButtonIndex = index;
        buttonColors[index] = Color.fromARGB(255, 151, 76, 248);
        textcolor[index] = Colors.white;
        bordercolor[index] = Colors.white;
        // Set selected index for navigation
        _selectedIndex = index;
        
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0),
          elevation: 0,
          centerTitle: true,
               title:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _handleButtonPressed(0);
                      },
                      child: Text(
                        'HOME',
                        style: TextStyle(color: textcolor[0]),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        fixedSize: Size(100, 50),
                        primary: buttonColors[0],
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: bordercolor[0]),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        _handleButtonPressed(1);
                      },
                      child: Text(
                        'EVALUATE',
                        style: TextStyle(color: textcolor[1]),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        fixedSize: Size(100, 50),
                        primary: buttonColors[1],
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: bordercolor[1]),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        _handleButtonPressed(2);
                      },
                      child: Text(
                        'RESULTS',
                        style: TextStyle(color: textcolor[2]),
                      ),

                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        fixedSize: Size(100, 50),
                        primary: buttonColors[2],
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: bordercolor[2]),
                        ),
                      ),
                    ),
                  ],
                ), 
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
