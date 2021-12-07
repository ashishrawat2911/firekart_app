import 'package:flutter/material.dart';
import 'package:fluttercommerce/core/utils/validator.dart';
import 'package:fluttercommerce/features/account/add_account_detail/view_model/add_account_details_view_model.dart';
import 'package:fluttercommerce/features/account/add_account_detail/state/add_account_details_state.dart';
import 'package:fluttercommerce/features/app/navigation/app_router.gr.dart';
import 'package:fluttercommerce/core/navigation/navigation_handler.dart';
import 'package:fluttercommerce/features/app/res/app_colors.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/core/state_manager/state_view_manager.dart';
import 'package:fluttercommerce/features/common/widgets/action_text.dart';
import 'package:fluttercommerce/features/common/widgets/commom_text_field.dart';
import 'package:fluttercommerce/features/common/widgets/common_app_loader.dart';
import 'package:fluttercommerce/features/common/widgets/common_button.dart';

class AddUserDetailScreen extends StateManagerWidget<AddAccountDetailsViewModel,
    AddAccountDetailsState> {
  AddUserDetailScreen(this.newAddress, {Key? key}) : super(key: key);

  final bool newAddress;

  final TextEditingController nameEditingController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Validator validator = Validator();

  @override
  void initState(AddAccountDetailsViewModel viewModel) {
    super.initState(viewModel);
    if (!newAddress) {
      viewModel.loadPreviousData();
    }

    nameEditingController.addListener(() {
      viewModel.validateButton(nameEditingController.text);
    });
  }

  @override
  void stateListener(BuildContext context, AddAccountDetailsState state) {
    super.stateListener(context, state);
    if (state is EditData) {
      nameEditingController.text = state.accountDetails.name;
    }
  }

  @override
  Widget buildView(BuildContext context, AddAccountDetailsViewModel viewModel,
      AddAccountDetailsState state) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
            "${newAddress ? StringsConstants.add : StringsConstants.edit} ${StringsConstants.details}"),
      ),
      body: Builder(builder: (BuildContext context) {
        if (state is Loading) {
          return Center(child: CommonAppLoader());
        } else {
          return saveDataView(state, context, viewModel);
        }
      }),
    );
  }

  Widget saveDataView(AddAccountDetailsState state, BuildContext context,
      AddAccountDetailsViewModel viewModel) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(16),
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
                        NavigationHandler.navigateTo(MyAddressScreenRoute());
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
                replaceWithIndicator: state is SaveDataLoading ? true : false,
                margin: EdgeInsets.only(bottom: 40),
                onTap: () {
                  onButtonTap(viewModel);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isButtonEnabled(AddAccountDetailsState state) {
    if (state is ButtonEnabled) {
      return true;
    } else if (state is ButtonDisabled) {
      return false;
    } else {
      return false;
    }
  }

  void onButtonTap(AddAccountDetailsViewModel viewModel) {
    if (_formKey.currentState!.validate()) {
      viewModel.saveData(nameEditingController.text, isEdit: newAddress);
    }
  }
}
