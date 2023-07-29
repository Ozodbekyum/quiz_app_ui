import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_ui/controllers/ques_controllers.dart';
import 'package:quiz_app_ui/pages/home_page.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    QuesController qcontroller = Get.put(QuesController());
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Column(
          children: [
            Spacer(
              flex: 3,
            ),
            Text(
              'Score',
              style: TextStyle(color: Colors.amber, fontSize: 40),
            ),
            Spacer(),
            Text(
              '${qcontroller.correctAnswer * 10}/${qcontroller.questions.length * 10}',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Spacer(
              flex: 3,
            ),
            Container(
              height: 60,
              width: 200,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.orange)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Text('go back')),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ]),
    );
  }
}
