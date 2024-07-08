import 'questions.dart';

//abstraction
class QuizBank {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'Do India win the ICC Mens T20 World Cup in 2024?', a: true),
    Question(q: 'Is Vasista the current President of India?', a: false),
    Question(
        q: 'Is Pawan Kalyan the Chief Minister of Andhra Pradesh?', a: false),
    Question(
        q: 'Narendra Modi is the Prime Minister of India as of 2024.', a: true),
    Question(q: 'Mumbai hosted the G20 summit in 2023.', a: true),
    Question(q: 'The movie "Kaliki" was directed by S.S. Rajamouli.', a: false),
    Question(
        q: 'Virat Kohli announced his retirement from all forms of cricket in 2024.',
        a: false),
    Question(
        q: 'Lord Krishna served as the charioteer of Arjuna in the Kurukshetra War.',
        a: true),
    Question(
        q: 'Arjuna is the eldest of the Pandava brothers in Mahabharata.',
        a: false),
    Question(q: 'Galileo Galilei invented the telescope.', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  //encapsulation :making private the questionBank list as private_ and by using getter method sending the question
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionanswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
