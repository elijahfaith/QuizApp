import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('The Heart is the pumping organ of the cirulatory system.', true),
    Question('The Aorta is the smallest artery in the blood vessels.', false),
    Question('The Body consist of 206 bones and 114 cartillages.', false),
    Question(' The Digestive system has nine organs all together.', true),
    Question(
        ' The Lungs function as a respiratory system and reproductive system',
        false),
    Question('The Pitutry gland functions as the endocrine syste.', true),
    Question(
        ' In addition to the colons, oesophagus and the mouth are counted as part of the digestive organ, True or False',
        true),
    Question(
        'The Central Nervours system consist of the Brain, Spinal Cord and the Peripheral Nervours system.',
        false),
    Question('Human teeth consist of 52 in number.', false),
    Question(' Humerus and the Femur are part of long bone.', true),
    Question(' Phallenges are also called fingers.', true),
    Question('Quinine, Artesunate are example of Antimalaria drug.', true),
    Question('Neurogesic balms are used as toothpaste for gingivities.', false),
    Question(
        ' Osteomyelities, Osteoporosis, Osteomalacia are common disorder of the skeletal system.',
        true),
    Question(' Hypersecretion of growth hormone is called dwarfism.', false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
