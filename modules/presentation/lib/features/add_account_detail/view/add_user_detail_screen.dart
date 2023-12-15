import 'package:auto_route/annotations.dart';
import 'package:localization/localization.dart';
import 'package:core/state_manager/base_view.dart';
import 'package:core/utils/validator.dart';
import 'package:presentation/features/add_account_detail/state/add_account_details_state.dart';
import 'package:assets/res/colors.gen.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_router.gr.dart';
import '../../../routes/route_handler.dart';
import '../../../widgets/action_text.dart';
import '../../../widgets/commom_text_field.dart';
import '../../../widgets/common_app_loader.dart';
import '../../../widgets/common_button.dart';
import '../view_model/add_account_details_view_model.dart';

@RoutePage()
class AddUserDetailScreen extends StatelessWidget {
  const AddUserDetailScreen(this.newAddress, {Key? key}) : super(key: key);

  final bool newAddress;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Text(
            '${newAddress ? Localization.value.add : Localization.value.edit} ${Localization.value.details}',
          ),
        ),
        body: _SaveDataView(newAddress),
      );
}

class _SaveDataView extends StatelessWidget {
  _SaveDataView(
    this.newAddress, {
    Key? key,
  }) : super(key: key);

  final bool newAddress;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameEditingController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final Validator validator = Validator();

  @override
  Widget build(BuildContext context) =>
      BaseView<AddAccountDetailsViewModel, AddAccountDetailsState>(
        onViewModelReady: (viewModel) {
          if (!newAddress) {
            viewModel.loadPreviousData();
          }
          nameEditingController.addListener(() {
            viewModel.validateButton(nameEditingController.text);
          });
        },
        stateListener: (context, state) {
          if (state is EditData) {
            nameEditingController.text = state.accountDetails.name;
          }
        },
        builder: (context, viewModel, state) {
          if (state is Loading) {
            return const Center(child: CommonAppLoader());
          }

          return SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                margin: const EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Visibility(
                      visible: !newAddress,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ActionText(
                              Localization.value.manageAddress,
                              onTap: () {
                                RouteHandler.routeTo(
                                  MyAddressRoute(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomTextField(
                      hint: 'Enter Name',
                      textEditingController: nameEditingController,
                      focusNode: nameFocusNode,
                      nextFocusNode: phoneFocusNode,
                      validator: validator.validateName,
                      textInputAction: TextInputAction.next,
                      onSubmitted: (val) {
                        FocusScope.of(context).requestFocus(phoneFocusNode);
                      },
                      // containerHeight: 50,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CommonButton(
                      title: newAddress ? 'Add' : 'Edit',
                      titleColor: AppColors.white,
                      height: 50,
                      isEnabled: isButtonEnabled(state),
                      replaceWithIndicator: state is SaveDataLoading,
                      margin: const EdgeInsets.only(bottom: 40),
                      onTap: () {
                        onButtonTap(viewModel);
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );

  void onButtonTap(AddAccountDetailsViewModel viewModel) {
    if (_formKey.currentState!.validate()) {
      viewModel.saveData(nameEditingController.text, isEdit: newAddress);
    }
  }

  bool isButtonEnabled(AddAccountDetailsState state) => state is ButtonEnabled;
}
