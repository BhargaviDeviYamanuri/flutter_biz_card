import 'package:biz_card/model/Quize.dart';
import 'package:flutter/material.dart';

class MaterialQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int currentQuestion = 0;
  List quizQuestions = [
    Quiz.addQuestions("Dick Van Dyke played in \"Mary Poppins\"", true),
    Quiz.addQuestions(
        "Is there a pencil type named Ticonderoga No. 2 pencil?", true),
    Quiz.addQuestions("Coca-Cola has always been brown.", true),
    Quiz.addQuestions("Are plastic plants made of plastic?", true),
    Quiz.addQuestions("Is Olive Garden a French restaurant?", false),
    Quiz.addQuestions("Pokemon is partially owned by Sega.", false),
    Quiz.addQuestions("Is sour cream the only food that doesn't spoil?", true),
    Quiz.addQuestions("Lachanophobia is the fear of heights.", false),
    Quiz.addQuestions("Is Bill Gates a founder of Microsoft?", true),
    Quiz.addQuestions("Disney made a movie named \"Antz\".", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade200,
        title: Text(
          "Quiz",
          style: TextStyle(
            color: Colors.purple.shade800,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Builder(
        builder: (BuildContext context) => Container(
          child: Column(
            children: <Widget>[
              Center(
                  child: Image.asset(
                "images/quiz_icon.png",
                width: 200,
              )),
              Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${quizQuestions[currentQuestion].question}",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.lightBlue.shade200,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.purple.shade800,
                      ),
                      onPressed: () {
                        setState(() {
                          if (currentQuestion == 0) {
                            currentQuestion = 0;
                          } else {
                            currentQuestion--;
                          }
                        });
                      },
                    ),
                    RaisedButton(
                      color: Colors.lightBlue.shade200,
                      child: Text(
                        "TRUE",
                        style: TextStyle(
                            color: Colors.purple.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        _checkAnswer(true, context);
                      },
                    ),
                    RaisedButton(
                      color: Colors.lightBlue.shade200,
                      child: Text(
                        "FALSE",
                        style: TextStyle(
                            color: Colors.purple.shade800,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        _checkAnswer(false, context);
                      },
                    ),
                    RaisedButton(
                      color: Colors.lightBlue.shade200,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.purple.shade800,
                      ),
                      onPressed: () {
                        setState(() {
                          if (currentQuestion < quizQuestions.length - 1) {
                            currentQuestion++;
                          } else {
                            currentQuestion = 0;
                          }
                        });
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _checkAnswer(bool answerState, BuildContext context) {
    if (answerState == quizQuestions[currentQuestion].isQuestionCorrect) {
      var correctSnackBar = SnackBar(
        duration: Duration(microseconds: 1000),
        content: Text("Your answer is correct"),
        backgroundColor: Colors.green.shade400,
      );
      Scaffold.of(context).showSnackBar(correctSnackBar);
    } else {
      var wrongSnackBar = SnackBar(
        duration: Duration(microseconds: 1000),
        content: Text("Your answer is wrong,Try again!"),
        backgroundColor: Colors.redAccent,
      );
      Scaffold.of(context).showSnackBar(wrongSnackBar);
    }
  }
}
