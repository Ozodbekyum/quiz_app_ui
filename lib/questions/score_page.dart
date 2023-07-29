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
            const Spacer(
              flex: 3,
            ),
            const Text(
              'Score',
              style: TextStyle(color: Colors.amber, fontSize: 40),
            ),
            const Spacer(),
            Text(
              '${qcontroller.correctAnswer * 10}/${qcontroller.questions.length * 10}',
              style: const TextStyle(color: Colors.black, fontSize: 30),
            ),
            const Spacer(
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
                          builder: (context) => const HomePage(),
                        ));
                  },
                  child: const Text('go back')),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ]),
    );
  }
}
