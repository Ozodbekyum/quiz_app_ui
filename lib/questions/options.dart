import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_ui/controllers/ques_controllers.dart';

class Option extends StatelessWidget {
  final String text;
  final int index;
  final VoidCallback press;
  const Option({
    super.key,
    required this.text,
    required this.index,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuesController>(
        init: QuesController(),
        builder: (qcontroller) {
          Color getColor() {
            if (qcontroller.isAnswered) {
              if (index == qcontroller.correctAnswer) {
                return Colors.green;
              } else if (index == qcontroller.selectedAnswer &&
                  qcontroller.correctAns != qcontroller.correctAnswer) {
                return Colors.red;
              }
            }
            return Colors.grey;
          }

          IconData getIcon() {
            return getColor() == Colors.red ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 60,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: getColor(),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${index + 1}. \t$text',
                      style: TextStyle(color: getColor(), fontSize: 20),
                    ),
                    Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                          color: getColor() == Colors.grey
                              ? Colors.transparent
                              : getColor(),
                          border: Border.all(
                            color: getColor(),
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: getIcon() == Colors.grey ? null : Icon(getIcon()),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
