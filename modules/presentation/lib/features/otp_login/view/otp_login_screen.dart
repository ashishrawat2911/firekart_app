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
import 'package:localization/localization.dart';
import 'package:core/state_manager/base_view.dart';

import 'package:core/utils/validator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:assets/res/app_theme.dart';

import 'package:assets/res/colors.gen.dart';
import 'package:assets/res/styles.dart';
import '../../../routes/route_handler.dart';
import '../../../widgets/commom_text_field.dart';
import '../../../widgets/common_app_loader.dart';
import '../../../widgets/common_button.dart';
import '../state/otp_login_state.dart';
import '../view_model/otp_login_view_model.dart';

@RoutePage()
class OtpLoginScreen extends StatefulWidget {
  const OtpLoginScreen({required this.phoneNumber, Key? key}) : super(key: key);

  final String phoneNumber;

  @override
  State createState() => _OtpLoginScreenState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('phoneNumber', phoneNumber));
  }
}

class _OtpLoginScreenState extends State<OtpLoginScreen> {
  TextEditingController otpNumberController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  Validator validator = Validator();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return BaseView<OtpLoginViewModel, OtpLoginState>(
      onViewModelReady: (viewModel) {
        viewModel.sendOtp(widget.phoneNumber);
        otpNumberController.addListener(() {
          viewModel.validateButton(otpNumberController.text);
        });
      },
      stateListener: (context, state) {
        if (state.otp != null) {
          otpNumberController.text = state.otp!;
        }
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

  Widget _loginCard(OtpLoginViewModel viewModel, OtpLoginState state) => Card(
        margin: const EdgeInsets.only(top: 50, right: 16, left: 16),
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text(
                  Localization.value.mobileVerification,
                  style: context.textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  Localization.value.mobileVerificationDesc,
                  style: context.textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Text(
                        Localization.value.changeNumber,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      onTap: () {
                        RouteHandler.pop(true);
                      },
                    ),
                  ],
                ),
                if (state.newUser)
                  const SizedBox(
                    height: 20,
                  ),
                if (state.newUser)
                  CustomTextField(
                    textEditingController: nameController,
                    hint: Localization.value.name,
                    validator: validator.validateName,
                  ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  textEditingController: otpNumberController,
                  hint: Localization.value.enterOtp,
                  validator: validator.validate4DigitCode,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 20,
                ),
                CommonButton(
                  title: Localization.value.confirmOtp,
                  height: 50,
                  isEnabled: state.isButtonEnabled,
                  replaceWithIndicator: state.confirmOtpLoading,
                  onTap: () {
                    onButtonTap(viewModel);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Builder(
                  builder: (context) {
                    if (state.resendOtpLoading) {
                      return const CommonAppLoader();
                    }
                    return GestureDetector(
                      onTap: () {
                        viewModel.sendOtp(widget.phoneNumber);
                      },
                      child: Text(
                        Localization.value.resendOtp,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: RouteHandler.pop,
                  child: Text(
                    Localization.value.goBack,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      );

  void onButtonTap(OtpLoginViewModel viewModel, {bool isResend = false}) {
    if (_formKey.currentState!.validate()) {
      viewModel.loginWithOtp(
        widget.phoneNumber,
        otpNumberController.text.trim(),
        isResend,
        nameController.text,
      );
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<TextEditingController>(
          'otpNumberController',
          otpNumberController,
        ),
      )
      ..add(DiagnosticsProperty<Validator>('validator', validator));
  }
}
