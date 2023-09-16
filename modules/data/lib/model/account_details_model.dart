/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account_details_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
)
class AccountDetailsModel {
  AccountDetailsModel(this.id, this.name, this.phoneNumber);

  factory AccountDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AccountDetailsModelFromJson(json);
  final int id;
  final String name;
  final String phoneNumber;

  Map<String, dynamic> toJson() => _$AccountDetailsModelToJson(this);
}
