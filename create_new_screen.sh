FILE_NAME="payment" # prefix of file and folder names
CLASS_NAME="Payment" # prefix of class name
PARAMETER_NAME="payment" # prefix of parameters
FILE_HEADER="/*
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
"
cd lib/presentation/features/ && pwd && mkdir ${FILE_NAME} &&
cd ${FILE_NAME} &&
mkdir view_model && cd view_model && touch "${FILE_NAME}_view_model.dart" &&
echo "${FILE_HEADER}
import 'package:core/state_manager/view_model.dart';
import 'package:presentation/features/${FILE_NAME}/state/${FILE_NAME}_state.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class "${CLASS_NAME}ViewModel" extends ViewModel<"${CLASS_NAME}State"> {
  "${CLASS_NAME}ViewModel"() : super(const "${CLASS_NAME}State"());

  Future<void> initialize() async {}
}" >> "${FILE_NAME}_view_model.dart" && cd .. && pwd &&

mkdir state && cd state && touch "${FILE_NAME}_state.dart" &&
echo "${FILE_HEADER}
import 'package:shared_dependencies/shared_dependencies.dart';
part '"${FILE_NAME}_state".freezed.dart';

@Freezed()
class "${CLASS_NAME}State" with "_\$${CLASS_NAME}State" {
  const factory "${CLASS_NAME}State"() = "_${CLASS_NAME}State";
}" >> "${FILE_NAME}_state.dart" && cd .. && pwd &&

# Creating _view.dart files in presentation/view module and adding common view class.
mkdir view && cd view && touch "${FILE_NAME}_view.dart" &&
echo "${FILE_HEADER}
import 'package:flutter/material.dart';
import 'package:presentation/features/${FILE_NAME}/view_model/${FILE_NAME}_view_model.dart';
import 'package:presentation/features/${FILE_NAME}/state/${FILE_NAME}_state.dart';
import 'package:core/state_manager/base_view.dart';

class "${CLASS_NAME}View" extends StatelessWidget {
  const "${CLASS_NAME}View"({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<"${CLASS_NAME}ViewModel", "${CLASS_NAME}State">(
      onViewModelReady: (viewModel) {
        viewModel.initialize();
      },
      builder: (context, viewModel, state) {
        return Scaffold(
          body: SafeArea(
            child: Container(),
          ),
        );
      },
    );
  }
}
" >> "${FILE_NAME}_view.dart" && cd ../../../../../ && pwd &&



cd lib/presentation/features/${FILE_NAME} && git add .

flutter pub run build_runner build --delete-conflicting-outputs
dart format