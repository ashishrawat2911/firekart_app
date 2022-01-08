import 'package:json_annotation/json_annotation.dart';

part 'faq_model.g.dart';

@JsonSerializable()
class FaqModel {
  FaqModel({this.question, this.answer});

  factory FaqModel.fromDocument(json) => _$FaqModelFromJson(json);

  String? question;
  String? answer;

  Map<String, dynamic> toMap() => _$FaqModelToJson(this);
}
