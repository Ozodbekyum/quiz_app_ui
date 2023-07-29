import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_ui/controllers/ques_controllers.dart';

import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    QuesController quesControllers = Get.put(QuesController());
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(50)),
            child: Stack(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width: constraints.maxWidth * 0.5,
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[Colors.white, Colors.green]),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                const Positioned.fill(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('12 sec'),
                      Icon(
                        Icons.punch_clock,
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Questions',
            style: TextStyle(color: Colors.black45, fontSize: 30),
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(height: 10),
          Expanded(
              child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: quesControllers.pageControllesr,
                  itemCount: quesControllers.questiones.length,
                  itemBuilder: (context, index) => QuestionCard(
                        questions: quesControllers.questions[index],
                      )))
        ],
      ),
    );
  }
}
