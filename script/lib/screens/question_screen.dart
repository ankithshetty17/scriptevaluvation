import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:file_picker/file_picker.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
   Future<void> _pickAnswerScript() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
    );

    if (result != null) {
      // Handle the picked file
      print('File picked: ${result.files.single.path}');
    } else {
      // User canceled the picker
      print('User canceled the picker');
    }
  }

Future<void> _pickExpectedanswerScript() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
    );

    if (result != null) {
      // Handle the picked file
      print('File picked: ${result.files.single.path}');
    } else {
      // User canceled the picker
      print('User canceled the picker');
    }
  }  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(left: 2),
                child: Container(
                  padding: EdgeInsets.only(left: 2),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.blue.withOpacity(0.5),
                      width: 4,
                    ),
                  ),
                  child: Center(
                    child: Expanded(
                      child: TextFormField(
                        maxLines: null,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          hintText: "ENTER THE QUESTION",
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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
                          hintText: "MAX MARKS",
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: _pickAnswerScript,
                    child: Container(
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Upload AnswerScript'),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            SvgPicture.asset(
                              'assets/images/upload.svg',
                              height: 90,
                              width: 90,
                            ),
                            SizedBox(height: 10),
                            Text('Click To Upload'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap:_pickExpectedanswerScript,
                    child: Container(
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Upload ExpectedAnswer'),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            SvgPicture.asset(
                              'assets/images/upload.svg',
                              height: 90,
                              width: 90,
                            ),
                            SizedBox(height: 10),
                            Text('Click To Upload'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
