import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';

class Qus extends StatelessWidget {
  Qus({
    required this.answer_4,
    required this.answer_2,
    required this.qus_text,
    required this.answer_3,
    required this.answer_1,
  });

  String? qus_text;
  String? answer_1;

  String? answer_2;

  String? answer_3;

  String? answer_4;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          height: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                      "https://www.heartlandintergroup.org/wp-content/uploads/question-background-1024x512.jpg"))),
          child: Text(
            "$qus_text",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
          ),
        ),
        Divider(height: 1),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (answer_4 == "uruguay")
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Center(
                                child: Text("good job"),
                              ),
                            );
                          });
                  },
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Center(
                                child: Text(
                                  "wrong",
                                  style: TextStyle(
                                    fontSize: 40,
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Column(
                      children: [
                        SizedBox(width: 90),
                        Text("$answer_1",
                            style: TextStyle(
                                fontFamily: "DancingScript", fontSize: 25)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                Text("$answer_2",
                    style:
                        TextStyle(fontFamily: "DancingScript", fontSize: 25)),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Row(
              children: [
                Text("$answer_3",
                    style:
                        TextStyle(fontFamily: "DancingScript", fontSize: 25)),
                SizedBox(
                  width: 100,
                ),
                Text("$answer_4",
                    style:
                        TextStyle(fontFamily: "DancingScript", fontSize: 25)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
