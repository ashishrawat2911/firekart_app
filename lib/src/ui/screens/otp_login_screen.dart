import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/src/bloc/otp_login/otp_login.dart';
import 'package:fluttercommerce/src/core/utils/validator.dart';
import 'package:fluttercommerce/src/di/app_injector.dart';
import 'package:fluttercommerce/src/res/string_constants.dart';
import 'package:fluttercommerce/src/res/styles.dart';
import 'package:fluttercommerce/src/res/text_styles.dart';
import 'package:fluttercommerce/src/routes/router.gr.dart';
import 'package:fluttercommerce/src/ui/common/commom_text_field.dart';
import 'package:fluttercommerce/src/ui/common/common_app_loader.dart';
import 'package:fluttercommerce/src/ui/common/common_button.dart';

class OtpLoginScreen extends StatefulWidget {
  final String phoneNumber;

  OtpLoginScreen({this.phoneNumber});

  @override
  _OtpLoginScreenState createState() => _OtpLoginScreenState();
}

class _OtpLoginScreenState extends State<OtpLoginScreen> {
  var otpLoginCubit = AppInjector.get<OtpLoginCubit>();
  TextEditingController otpNumberController = TextEditingController();
  Validator validator = Validator();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    otpLoginCubit.sendOtp(widget.phoneNumber);
    otpNumberController.addListener(() {
      print(otpNumberController.text);
      otpLoginCubit.validateButton(otpNumberController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
              body: Container(
                child: Column(
                  children: <Widget>[_loginCard()],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginCard() {
    return Card(
      margin: EdgeInsets.only(top: 50, right: 16, left: 16),
      child: Container(
        margin: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                StringsConstants.mobileVerification,
                style: AppTextStyles.medium20Color20203E,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                StringsConstants.mobileVerificationDesc,
                style: AppTextStyles.normal14Black,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  InkWell(
                    child: Text(
                      StringsConstants.changeNumber,
                      style: AppTextStyles.normal14PrimaryColor,
                    ),
                    onTap: () {
                      Navigator.of(context).pop(true);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                textEditingController: otpNumberController,
                hint: StringsConstants.enterOtp,
                validator: validator.validate6DigitCode,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 20,
              ),
              BlocConsumer<OtpLoginCubit, OtpLoginState>(
                cubit: otpLoginCubit,
                listener: (BuildContext context, OtpLoginState state) {
                  state.when(
                      idle: () {},
                      confirmOtpLoading: () {},
                      autoFetchOtp: (String otp) {
                        otpNumberController.text = otp;
                      },
                      onButtonEnabled: () {},
                      resendOtpLoading: () {},
                      showError: (String error) {
                        print(error);
                      },
                      onButtonDisabled: () {},
                      loginSuccessFull: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            Routes.checkStatusScreen,(route) => false,
                            arguments: CheckStatusScreenArguments(checkForAccountStatusOnly: true));
                      },
                      codeCountDown: (String value) {
                        print(value);
                      });
                },
                builder: (BuildContext context, OtpLoginState state) {
                  bool isButtonEnabled() {
                    if (state is ButtonEnabled) {
                      return true;
                    } else if (state is ButtonDisabled) {
                      return false;
                    } else {
                      return true;
                    }
                  }

                  return CommonButton(
                    title: StringsConstants.confirmOtp,
                    height: 50,
                    isEnabled: isButtonEnabled(),
                    replaceWithIndicator:
                        state is ConfirmOtpLoading ? true : false,
                    onTap: () {
                      onButtonTap();
                    },
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              BlocConsumer<OtpLoginCubit, OtpLoginState>(
                cubit: otpLoginCubit,
                listener: (BuildContext context, OtpLoginState state) {},
                builder: (BuildContext context, OtpLoginState state) {
                  if (state is ResendOtpLoading) return CommonAppLoader();
                  return Text(
                    StringsConstants.resendOtp,
                    style: AppTextStyles.normal14PrimaryColor,
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text(
                  StringsConstants.goBack,
                  style: AppTextStyles.normal14PrimaryColor,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onButtonTap() {
    if (_formKey.currentState.validate()) {
      otpLoginCubit.loginWithOtp(otpNumberController.text.trim());
    }
  }
}
