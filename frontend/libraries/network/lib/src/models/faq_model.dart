import 'package:json_annotation/json_annotation.dart';

part 'faq_model.g.dart';

@JsonSerializable()
class FaqModel {
  FaqModel({this.question, this.answer});

  factory FaqModel.fromJson(json) => _$FaqModelFromJson(json);

  String? question;
  String? answer;

  Map<String, dynamic> toJson() => _$FaqModelToJson(this);
}
