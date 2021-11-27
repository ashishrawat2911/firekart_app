import 'package:json_annotation/json_annotation.dart';

part 'faq_model.g.dart';

@JsonSerializable()
class FaqModel {
  String? question;
  String? answer;

  FaqModel({this.question, this.answer});

  factory FaqModel.fromDocument(json) => _$FaqModelFromJson(json);

  Map<String, dynamic> toMap() => _$FaqModelToJson(this);
}
