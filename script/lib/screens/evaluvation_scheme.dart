import 'package:flutter/material.dart';

class EvaluateScreen extends StatefulWidget {
  const EvaluateScreen({super.key});

  @override
  State<EvaluateScreen> createState() => _EvaluateScreenState();
}

class _EvaluateScreenState extends State<EvaluateScreen> {
  String? selectedSubject;
  String? selectedExam;
  List<String> ExamList = [
    'Quiz',
    'Mid-Term',
    'Exam',
  ];
  List<String> SubjectList = [
    'Maths',
    'Physics',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          child: Column(
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(left: 2),
                child: Container(
                  padding: EdgeInsets.only(left: 2),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.blue.withOpacity(0.5),
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          hintText: "Total Questions",
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(7),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
