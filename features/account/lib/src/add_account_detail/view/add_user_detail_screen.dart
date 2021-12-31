import 'package:account/src/add_account_detail/state/add_account_details_state.dart'
    as account_details_state;
import 'package:account/src/add_account_detail/view_model/add_account_details_view_model.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:widgets/widgets.dart';

class AddUserDetailScreen extends StatelessWidget {
  const AddUserDetailScreen(this.newAddress, {Key? key}) : super(key: key);

  final bool newAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
            "${newAddress ? StringsConstants.add : StringsConstants.edit} ${StringsConstants.details}"),
      ),
      body: _SaveDataView(newAddress),
    );
  }
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
  Widget build(BuildContext context) {
    return StateBuilder<AddAccountDetailsViewModel,
        account_details_state.AddAccountDetailsState>(
      isProviderApplied: true,
      onViewModelReady: (viewModel) {
        if (!newAddress) {
          viewModel.loadPreviousData();
        }
        nameEditingController.addListener(() {
          viewModel.validateButton(nameEditingController.text);
        });
      },
      stateListener: (context, state) {
        if (state is account_details_state.EditData) {
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
                          ActionText(StringsConstants.manageAddress, onTap: () {
                            NavigationHandler.navigateTo(
                                MyAddressScreenRoute());
                          }),
                        ],
                      ),
                    ),
                  ),
                  CustomTextField(
                    hint: "Enter Name",
                    textEditingController: nameEditingController,
                    focusNode: nameFocusNode,
                    nextFocusNode: phoneFocusNode,
                    validator: validator.validateName,
                    keyboardType: TextInputType.text,
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
                    title: newAddress ? "Add" : "Edit",
                    titleColor: AppColors.white,
                    height: 50,
                    isEnabled: isButtonEnabled(state),
                    replaceWithIndicator:
                        state is account_details_state.SaveDataLoading,
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
  }

  void onButtonTap(AddAccountDetailsViewModel viewModel) {
    if (_formKey.currentState!.validate()) {
      viewModel.saveData(nameEditingController.text, isEdit: newAddress);
    }
  }

  bool isButtonEnabled(account_details_state.AddAccountDetailsState state) {
    if (state is account_details_state.ButtonEnabled) {
      return true;
    } else if (state is account_details_state.ButtonDisabled) {
      return false;
    } else {
      return false;
    }
  }
}
