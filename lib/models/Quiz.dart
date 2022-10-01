import 'package:flutter/material.dart';

import '../component/question.dart';
import 'package:ionicons/ionicons.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_mark),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_mark),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_mark),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_mark),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_mark),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_mark),
                color: Colors.black,
              ),
            ]),
            title: Text(
              "Quiz App",
              style: TextStyle(
                  fontFamily: "DancingScript",
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          body: Container(
            child: TabBarView(children: [
              Qus(
                  answer_2: "jordan",
                  answer_1: "usa",
                  answer_3: "brazil",
                  answer_4: "uruguay",
                  qus_text:
                      "Which country won the first ever World Cup in 1930?"),
              Qus(
                  answer_1: "miroslav ",
                  answer_2: "ronaldo",
                  answer_3: "messi",
                  answer_4: "harry kane",
                  qus_text:
                      "own English players have won the World Cup Golden Boot?"),
              Qus(
                  answer_1: "Real madrid",
                  answer_2: "celtic",
                  answer_3: "bayren",
                  answer_4: "arsenl",
                  qus_text:
                      "Which club has won the most Champions League titles?"),
              Qus(
                  answer_1: "The Red Bulls",
                  answer_2: "Mainz",
                  answer_3: "Die Fohlen",
                  answer_4: "slippery",
                  qus_text: "RB Leipzig are otherwise known as...??"),
              Qus(
                  answer_1: "1960",
                  answer_2: "1998",
                  answer_3: "1888",
                  answer_4: "1999",
                  qus_text:
                      "In which year was the first European Championship held?"),
              Qus(
                  answer_1: " Eto'o",
                  answer_2: "Bierhoff",
                  answer_3: "Rivaldo",
                  answer_4: "Cristiano",
                  qus_text: "I've worn numbers 7, 17, 28 and 9 in my career"),
            ]),
          ),
        ));
  }
}
