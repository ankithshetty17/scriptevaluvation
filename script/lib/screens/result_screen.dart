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

  // List to keep track of selected rows
  List<bool> _selectedRows = List.generate(3, (index) => false); // Change the size accordingly

  // List to keep track of expansion panel states
  List<bool> _expanded = List.generate(2, (index) => false); // Change the size accordingly

  @override
  Widget build(BuildContext context) {
    int numberOfColumns = 4;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Export All Data'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: MediaQuery.of(context).size.width * 0.7,
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
                        DataTable(
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
                                              : 'Max Marks',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                          ),
                          rows: List.generate(
                            2, // Change the size accordingly
                            (index) {
                              return DataRow(
                                cells: List.generate(
                                  numberOfColumns,
                                  (cellIndex) {
                                    // Return data cells
                                    if (cellIndex == 0) {
                                      // Expansion panel icon
                                      return DataCell(
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _expanded[index] = !_expanded[index];
                                            });
                                          },
                                          icon: Icon(_expanded[index] ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                                        ),
                                      );
                                    } else {
                                      // Data cells
                                      return DataCell(
                                        Text(
                                          cellIndex == 1
                                              ? 'Name $index'
                                              : cellIndex == 2
                                                  ? 'ID $index'
                                                  : cellIndex == 3
                                                      ? ' $index'
                                                      : cellIndex == 4
                                                          ? 'City $index'
                                                          : 'State $index',
                                        ),
                                      );
                                    }
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        // Expansion panels for additional content
                        ...List.generate(
                          2, // Change the size accordingly
                          (index) {
                            return _expanded[index]
                                ? Container(
                                    padding: EdgeInsets.all(8),
                                    color: Colors.grey[200],
                                    child: Text('Expanded Content for Row ${index + 1}'),
                                  )
                                : SizedBox.shrink();
                          },
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
    );
  }
}
