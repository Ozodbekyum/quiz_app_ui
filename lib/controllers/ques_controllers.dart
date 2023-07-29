import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_ui/models/questions_model.dart';
import 'package:quiz_app_ui/questions/score_page.dart';

class QuesController extends GetxController {
  PageController pageControllesr = PageController();
  PageController get pageContr => this.pageControllesr;
  List<QuestionsModel> questions = sample_data
      .map((question) => QuestionsModel(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index'],
          ))
      .toList();
  List<QuestionsModel> get questiones => this.questions;

  bool isAnswered = false;
  bool get isAnswerd => this.isAnswered;

  int correctAnswer = 0;
  int get correctAns => this.correctAnswer;

  int selectedAnswer = 0;
  int get selctedAns => this.selectedAnswer;

  RxInt questionNumber = 1.obs;
  RxInt get questionNum => this.questionNumber;

  int numofCorAns = 0;
  int get numofCor => this.numofCorAns;

  void checkAns(QuestionsModel question, int selindex) {
    isAnswered = true;
    correctAnswer = question.answer;
    selectedAnswer = selindex;
    if (correctAnswer == selectedAnswer) numofCorAns++;
    update();

    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (questionNumber.value != questions.length) {
      isAnswered = false;
      pageControllesr.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);
    } else
      Get.to(ScorePage());
  }
}
