import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const QuizPage());
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final Icon tickIcon = const Icon(Icons.check, color: Colors.green);
  final Icon crossIcon = const Icon(Icons.clear, color: Colors.green);
  int count = 0;

  List<Icon> iconList = [];

  _checkAnswer(bool selectedAnswer) {
    if (selectedAnswer == booleanQuestions[count].correctAnswer) {
      setState(() {
        iconList.add(tickIcon);
        if (count < booleanQuestions.length - 1) {
          count++;
        }
      });
    } else {
      setState(() {
        iconList.add(crossIcon);
        if (count < booleanQuestions.length - 1) {
          count++;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333333),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 110,
                left: 20,
                right: 20,
              ),
              child: Container(
                height: 80,
                width: double.infinity,
                color: Colors.blue,
                child: Text(
                  booleanQuestions[count].question,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MaterialButton(
                onPressed: () {
                  _checkAnswer(true);
                },
                child: const Text(
                  "True",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  _checkAnswer(false);
                },
                child: const Text(
                  "False",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: iconList,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
