import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'faq_model.g.dart';

@JsonSerializable()
class FaqModel {
  factory FaqModel.fromDocument(Map<String, dynamic> json) =>
      _$FaqModelFromJson(json);

  String question;
  String answer;

  Map<String, dynamic> toMap() => _$FaqModelToJson(this);

  FaqModel(this.question, this.answer);
}
