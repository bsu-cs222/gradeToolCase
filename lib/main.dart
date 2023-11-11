import 'package:flutter/material.dart';
import 'package:gradetool/GradeCalculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grade Calculator',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  String _message = 'Enter your number grade and press submit';
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grade Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                controller: _controller,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  GradeCalculator calculator = GradeCalculator();
                  int gradeNumber = int.parse(_controller.text);
                  _message = 'Your letter grade is an ${calculator.letterGrade(gradeNumber)}.';
                });
              },
              child: const Text('Submit'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(_message),
          ],
        ),
      ),
    );
  }
}
