class FaqModel {
  List<FaqModel>? faqList;

  FaqModel({this.faqList});

  factory FaqModel.fromDocument(json) {
    return FaqModel(
      faqList: (json['faqList'] as List?)
          ?.map((e) => FaqModel.fromDocument(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'faqList': faqList,
      };
}

class Faq {
  String? questions;
  String? answers;

  Faq({this.questions, this.answers});

  factory Faq.fromDocument(json) {
    return Faq(
      questions: json['questions'] as String?,
      answers: json['answers'] as String?,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'questions': questions,
        'answers': answers,
      };
}
