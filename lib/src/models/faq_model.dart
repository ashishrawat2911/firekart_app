class FaqModel {
  String question;
  String answer;

  FaqModel({this.question, this.answer});

  factory FaqModel.fromDocument(json) {
    return FaqModel(
      question: json['question'] as String,
      answer: json['answer'] as String,
    );
  }

  Map<String, dynamic> toMap() => <String, dynamic>{
    'question': question,
    'answer': answer,
  };
}