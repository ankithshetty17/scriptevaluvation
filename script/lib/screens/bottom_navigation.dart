import 'package:flutter/material.dart';
import 'package:script/screens/answer_script.dart';
import 'package:script/screens/evaluvation_scheme.dart';
import 'package:script/screens/question_screen.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int selectedPageIndex = 0;
  int _selectedIndex= 0;
  List<Widget> _widgetOptions = <Widget>[
    EvaluateScreen(),
    QuestionsScreen(),
    AnswerScript(),
  ];
  void _selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  int selectedTextIndex = -1;
  List<Color> textcolor = [
    const Color.fromARGB(255, 59, 59, 59),
    const Color.fromARGB(255, 59, 59, 59),
    const Color.fromARGB(255, 59, 59, 59)
  ];
  void _handleTextPressed(int index) {
    setState(() {
      // Deselect the previously selected button if it's the same as the one being pressed
      if (selectedTextIndex == index) {
        textcolor[selectedTextIndex] = const Color.fromARGB(255, 97, 96, 96);
        selectedTextIndex = -1; // Reset selected button index
      } else {
        // Deselect the previously selected button
        if (selectedTextIndex != -1) {
          textcolor[selectedTextIndex] = const Color.fromARGB(255, 97, 96, 96);
        }
        // Set selected button index and color
        selectedTextIndex = index;
        textcolor[index] = Colors.blue;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Color.fromARGB(255, 151, 76, 248),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                 Icons.stars_rounded,
                 color: Color.fromARGB(255, 148, 147, 147).withOpacity(0.3),
            ),
          label: 'Schema',
            activeIcon: Icon(
              Icons.stars_rounded,
               size: 25,
              
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.help,
              color: Color.fromARGB(255, 148, 147, 147).withOpacity(0.3),
            ),
            label: 'Questions',
            activeIcon: Icon(
              Icons.help,
             size: 25,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
             Icons.check_circle, 
              color: Color.fromARGB(255, 148, 147, 147).withOpacity(0.3),  
            ),
            label: 'Answerscript',
            activeIcon: Icon(
            Icons.check_circle,
             size: 25,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
