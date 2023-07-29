class QuestionsModel {
  final int id, answer;
  final String question;
  final List<String> options;
  QuestionsModel(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    'id': 1,
    'question': '3+5=____',
    'options': ['2', '4', '8', '10'],
    'answer_index': 2,
  },
  {
    'id': 1,
    'question': '34+5=____',
    'options': ['39', '4', '8', '10'],
    'answer_index': 0,
  },
  {
    'id': 1,
    'question': '100+5=____',
    'options': ['2', '106', '8', '105'],
    'answer_index': 3,
  },
  {
    'id': 1,
    'question': '10:5=____',
    'options': ['2', '3', '5', '10'],
    'answer_index': 0,
  },
  {
    'id': 1,
    'question': '4-5=____',
    'options': ['9', '-1', '1', '109'],
    'answer_index': 1,
  },
  {
    'id': 1,
    'question': '9+5=____',
    'options': ['2', '14', '8', '10'],
    'answer_index': 1,
  }
];
