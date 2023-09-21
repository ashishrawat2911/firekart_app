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
import 'package:auto_route/annotations.dart';
import 'package:country_code_picker_x/country_code_picker_x.dart';
import 'package:localization/localization.dart';
import 'package:core/state_manager/base_view.dart';

import 'package:core/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:assets/res/app_theme.dart';

import 'package:assets/res/styles.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/route_handler.dart';
import '../../../widgets/commom_text_field.dart';
import '../../../widgets/common_button.dart';
import '../state/phone_login_state.dart';
import '../view_model/phone_login_view_model.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  Validator validator = Validator();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ValueNotifier<String> phoneNumberNotifier = ValueNotifier('+91');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BaseView<PhoneLoginViewModel, PhoneLoginState>(
      onViewModelReady: (viewModel) {
        phoneNumberController.addListener(() {
          viewModel.validateButton(phoneNumberController.text);
        });
      },
      builder: (context, viewModel, state) => Scaffold(
        body: Stack(
          children: <Widget>[
            Material(
              elevation: 5,
              child: Container(
                height: 250,
                width: width,
                decoration: BoxDecoration(
                  gradient: Styles.appBackGradient,
                ),
              ),
            ),
            SafeArea(
              child: Scaffold(
                backgroundColor: Colors.transparent,
                // backgroundColor: Styles.transparent,
//            floatingActionButton: _floatingActionButton(),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                body: Column(
                  children: <Widget>[_loginCard(viewModel, state)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _loginCard(PhoneLoginViewModel viewModel, PhoneLoginState state) {
    return Card(
      margin: const EdgeInsets.only(top: 50, right: 16, left: 16),
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text(
                Localization.value.login,
                style: context.textTheme.displayMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                Localization.value.phoneLoginText,
                style: context.textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CountryCodePickerX(
                    onChanged: (value) {
                      phoneNumberNotifier.value = value.dialCode!;
                    },
                    initialSelection: 'IN',
                    favorite: const ['+91', 'IN'],
                  ),
                  Expanded(
                    child: CustomTextField(
                      textEditingController: phoneNumberController,
                      hint: Localization.value.mobileNumber,
                      validator: validator.validateMobile,
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CommonButton(
                title: Localization.value.continueText,
                height: 50,
                isEnabled: state.isButtonEnabled,
                replaceWithIndicator: state.phoneLoading,
                onTap: onButtonTap,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onButtonTap() {
    if (_formKey.currentState!.validate()) {
      RouteHandler.routeTo(
        OtpLoginRoute(
          phoneNumber: phoneNumberNotifier.value + phoneNumberController.text,
        ),
      ).then((value) {
        if (value != null && value) {
          phoneNumberController.clear();
        }
      });
    }
  }
}
