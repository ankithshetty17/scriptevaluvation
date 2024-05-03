import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String? selectedSubject;
  String? selectedExam;
  List<String> ExamList = ['Quiz', 'Mid-Term', 'Exam'];
  List<String> SubjectList = ['Maths', 'Physics'];
  int currentPage = 1; // Current page index
  int totalPages = 3; // Total number of pages

  // List to maintain checkbox states
  List<bool> checkboxStates = [];

  @override
  void initState() {
    super.initState();
    // Initialize checkbox states
    checkboxStates = List.generate(4, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    int numberOfColumns = 5; // Increase the number of columns
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child:
      SingleChildScrollView(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.blue.withOpacity(0.5),
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Select Exam",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                      value: selectedExam,
                      onChanged: (String? value) {
                        setState(() {
                          selectedExam = value;
                        });
                      },
                      items: ExamList.map((String city) {
                        return DropdownMenuItem<String>(
                          value: city,
                          child: Text(city),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.blue.withOpacity(0.5),
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Select Subject",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      value: selectedSubject,
                      onChanged: (String? value) {
                        setState(() {
                          selectedSubject = value;
                        });
                      },
                      items: SubjectList.map((String city) {
                        return DropdownMenuItem<String>(
                          value: city,
                          child: Text(city),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(7),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: MediaQuery.of(context).size.width * 1.3,
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.search, color: Colors.grey, size: 25),
                                    Icon(Icons.menu, color: Colors.grey, size: 25),
                                    Icon(Icons.fullscreen, color: Colors.grey, size: 25),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: DataTable(
                            columns: List.generate(
                              numberOfColumns,
                              (index) {
                                // Return data columns
                                return DataColumn(
                                  label: Text(
                                    index == 0
                                        ? ''
                                        : index == 1
                                            ? 'Student Name'
                                            : index == 2
                                                ? 'Student ID'
                                                : index == 3
                                                    ? 'Max Marks'
                                                    : 'City', // Added column for City
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                );
                              },
                            ),
                            rows: List.generate(
                              4, // Number of rows
                              (index) {
                                return DataRow(
                                  cells: List.generate(
                                    numberOfColumns,
                                    (cellIndex) {
                                      if (cellIndex == 0) {
                                        // First cell with checkbox
                                        return DataCell(
                                          GestureDetector(
                                            onTap: () {
                                              // Show the popup card when tapped
                                              showDialog(
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Text('Student Details'),
                                                    content: Text('Details of student ${(index + 1)}'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context).pop();
                                                        },
                                                        child: Text('Close'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            child: Icon(
                                              checkboxStates[index] ? Icons.check_box : Icons.check_box_outline_blank,
                                              color: checkboxStates[index] ? Colors.blue : Colors.grey,
                                              size: 17,
                                            ),
                                          ),
                                        );
                                      } else {
                                        // Other cells
                                        return DataCell(Text('Data ${(index + 1)}'));
                                      }
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  if (currentPage > 1) {
                                    setState(() {
                                      currentPage--;
                                    });
                                  }
                                },
                                icon: Icon(Icons.keyboard_arrow_left),
                              ),
                              Text(
                                'Page $currentPage of $totalPages',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () {
                                  if (currentPage < totalPages) {
                                    setState(() {
                                      currentPage++;
                                    });
                                  }
                                },
                                icon: Icon(Icons.keyboard_arrow_right),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ResultScreen(),
  ));
}
