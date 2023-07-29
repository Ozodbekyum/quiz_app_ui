import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_ui/controllers/ques_controllers.dart';
import 'package:quiz_app_ui/models/questions_model.dart';

import 'options.dart';

class QuestionCard extends StatelessWidget {
  final QuestionsModel questions;

  const QuestionCard({
    required this.questions,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    
  QuesController controller = Get.put(QuesController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  questions.question,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          ...List.generate(
            questions.options.length,
            (index) => Option(
              text: questions.options[index],
              index: index,
              press: () => controller.checkAns(questions, index),
            ),
          ),
        ],
      ),
    );
  }
}
