import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map> allquestions = [
    {
      "questions": "Who is the founder of microsoft",
      "options": ["steve jobs", "bill Gates", "Lary Page", "Elon Musk"],
      "correct": 1
    },
    {
      "questions": "Who is the founder of google",
      "options": ["steve jobs", "bill Gates", "Lary Page", "Elon Musk"],
      "correct": 2
    },
    {
      "questions": "Who is the Founder of Apple",
      "options": ["steve jobs", "bill Gates", "Lary Page", "Elon Musk"],
      "correct": 0
    },
    {
      "questions": "Who is the Founder of Spacex",
      "options": ["steve jobs", "bill Gates", "Lary Page", "Elon Musk"],
      "correct": 3
    },
    {
      "questions": "Who is the founder of Meta",
      "options": ["steve jobs", "Marks Zuckerberg", "Lary Page", "Elon Musk"],
      "correct": 1
    }
  ];

  int questionsCurrentIndex = 0;
  int selectedAnswerIndex = -1;
  bool chngscafold = true;
  int count = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allquestions[questionsCurrentIndex]["correct"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (chngscafold == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 450,
                ),
                Text(
                  "Question : ${questionsCurrentIndex + 1}/${allquestions.length} ",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: Text(
                allquestions[questionsCurrentIndex]["questions"],
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(0),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 0;

                      if (selectedAnswerIndex ==
                          allquestions[questionsCurrentIndex]["correct"]) {
                        count++;
                      }
                      setState(() {});
                    }
                  },
                  child: Text(
                    allquestions[questionsCurrentIndex]["options"][0],
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(1),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 1;
                      if (selectedAnswerIndex ==
                          allquestions[questionsCurrentIndex]["correct"]) {
                        count++;
                      }
                      setState(() {});
                    }
                  },
                  child: Text(
                    allquestions[questionsCurrentIndex]["options"][1],
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(2),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 2;

                      if (selectedAnswerIndex ==
                          allquestions[questionsCurrentIndex]["correct"]) {
                        count++;
                      }
                      setState(() {});
                    }
                  },
                  child: Text(
                    allquestions[questionsCurrentIndex]["options"][2],
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: checkAnswer(3),
                  ),
                  onPressed: () {
                    if (selectedAnswerIndex == -1) {
                      selectedAnswerIndex = 3;

                      if (selectedAnswerIndex ==
                          allquestions[questionsCurrentIndex]["correct"]) {
                        count++;
                      }
                      setState(() {});
                    }
                  },
                  child: Text(
                    allquestions[questionsCurrentIndex]["options"][3],
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  )),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              if (questionsCurrentIndex < allquestions.length - 1) {
                questionsCurrentIndex++;
              }

              ///selectedAnswerIndex = -1;
            } else {
              chngscafold = false;
            }
            selectedAnswerIndex = -1;

            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv8WM3JlVce0Ad9XXMH7uozHd3hMDVlz5_-A&s",
                height: 300,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text("score:$count/${allquestions.length}")
            ],
          ),
        ),
      );
    }
  }
}
