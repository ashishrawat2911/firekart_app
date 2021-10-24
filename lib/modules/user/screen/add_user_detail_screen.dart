import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/modules/address/bloc/add_account_details_cubit.dart';
import 'package:fluttercommerce/modules/address/state/add_account_details_state.dart';
import 'package:fluttercommerce/modules/common/widgets/action_text.dart';
import 'package:fluttercommerce/modules/common/widgets/commom_text_field.dart';
import 'package:fluttercommerce/modules/common/widgets/common_app_loader.dart';
import 'package:fluttercommerce/modules/common/widgets/common_button.dart';
import 'package:fluttercommerce/routes/router.gr.dart';
import 'package:fluttercommerce/res/app_colors.dart';
import 'package:fluttercommerce/res/string_constants.dart';
import 'package:fluttercommerce/utils/validator.dart';

class AddUserDetailScreen extends StatefulWidget {
  final bool newAddress;

  AddUserDetailScreen(this.newAddress);

  @override
  _AddUserDetailScreenState createState() => _AddUserDetailScreenState();
}

class _AddUserDetailScreenState extends State<AddUserDetailScreen> {
  var addAddressCubit = DI.container<AddAccountDetailsCubit>();

  TextEditingController nameEditingController = TextEditingController();
  FocusNode nameFocusNode = FocusNode();
  FocusNode phoneFocusNode = FocusNode();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  Validator validator = Validator();

  @override
  void initState() {
    super.initState();
    if (!widget.newAddress) {
      addAddressCubit.loadPreviousData();
    }
    nameEditingController.addListener(() {
      addAddressCubit.validateButton(nameEditingController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
            "${widget.newAddress ? StringsConstants.add : StringsConstants.edit} ${StringsConstants.details}"),
      ),
      body: BlocConsumer<AddAccountDetailsCubit, AddAccountDetailsState>(
        cubit: addAddressCubit,
        listener: (BuildContext context, AddAccountDetailsState state) {
          if (state is Successful) {
            if (widget.newAddress) {
              Navigator.of(context).pushReplacementNamed(Routes.mainHomeScreen);
            } else {
              Navigator.of(context).pop();
            }
          }
          if (state is EditData) {
            nameEditingController.text = state.accountDetails.name;
          }
        },
        builder: (BuildContext context, AddAccountDetailsState state) {
          if (state is Loading) {
            return Center(child: CommonAppLoader());
          } else {
            return saveDataView(state);
          }
        },
      ),
    );
  }

  Widget saveDataView(AddAccountDetailsState state) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Visibility(
                visible: !widget.newAddress,
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      ActionText(StringsConstants.manageAddress, onTap: () {
                        Navigator.of(context).pushNamed(Routes.myAddressScreen);
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
              SizedBox(
                height: 20,
              ),
              CommonButton(
                title: widget.newAddress ? "Add" : "Edit",
                titleColor: AppColors.white,
                height: 50,
                isEnabled: isButtonEnabled(state),
                replaceWithIndicator: state is SaveDataLoading ? true : false,
                margin: EdgeInsets.only(bottom: 40),
                onTap: () {
                  onButtonTap();
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

  void onButtonTap() {
    if (_formKey.currentState.validate()) {
      addAddressCubit.saveData(nameEditingController.text,
          isEdit: widget.newAddress);
    }
  }
}
