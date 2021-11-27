import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/features/common/widgets/commom_text_field.dart';
import 'package:fluttercommerce/features/common/widgets/common_app_loader.dart';
import 'package:fluttercommerce/features/common/widgets/common_button.dart';
import 'package:fluttercommerce/features/login/bloc/otp_login_cubit.dart';
import 'package:fluttercommerce/features/login/state/otp_login_state.dart';
import 'package:fluttercommerce/features/order/bloc/account_details_cubit.dart';
import 'package:fluttercommerce/routes/router.gr.dart';
import 'package:fluttercommerce/res/string_constants.dart';
import 'package:fluttercommerce/res/styles.dart';
import 'package:fluttercommerce/res/text_styles.dart';
import 'package:fluttercommerce/core/utils/validator.dart';
import 'package:fluttercommerce/di/di.dart';

class OtpLoginScreen extends StatefulWidget {
  final String? phoneNumber;

  OtpLoginScreen({this.phoneNumber, Key? key}) : super(key: key);

  @override
  _OtpLoginScreenState createState() => _OtpLoginScreenState();
}

class _OtpLoginScreenState extends State<OtpLoginScreen> {
  var otpLoginCubit = DI.container<OtpLoginCubit>();
  TextEditingController otpNumberController = TextEditingController();
  Validator validator = Validator();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var accountDetailsCubit = DI.container<AccountDetailsCubit>();

  @override
  void initState() {
    super.initState();
    otpLoginCubit.sendOtp(widget.phoneNumber!);
    otpNumberController.addListener(() {
      print(otpNumberController.text);
      otpLoginCubit.validateButton(otpNumberController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
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
              // ignore: avoid_unnecessary_containers
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
              const SizedBox(
                height: 20,
              ),
              Text(
                StringsConstants.mobileVerificationDesc,
                style: AppTextStyles.normal14Black,
              ),
              const SizedBox(
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
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                textEditingController: otpNumberController,
                hint: StringsConstants.enterOtp,
                validator: validator.validate6DigitCode,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 20,
              ),
              BlocConsumer<OtpLoginCubit, OtpLoginState>(
                bloc : otpLoginCubit,
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
                        accountDetailsCubit.streamAccountDetails();

                        Navigator.of(context).pushNamedAndRemoveUntil(
                            CheckStatusScreenRoute.name, (route) => false,
                            arguments: CheckStatusScreenRouteArgs(
                                checkForAccountStatusOnly: true));
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
                    replaceWithIndicator: state is ConfirmOtpLoading,
                    onTap: () {
                      onButtonTap();
                    },
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              BlocConsumer<OtpLoginCubit, OtpLoginState>(
                bloc : otpLoginCubit,
                listener: (BuildContext context, OtpLoginState state) {},
                builder: (BuildContext context, OtpLoginState state) {
                  if (state is ResendOtpLoading) {
                    return CommonAppLoader();
                  }
                  return Text(
                    StringsConstants.resendOtp,
                    style: AppTextStyles.normal14PrimaryColor,
                  );
                },
              ),
              const SizedBox(
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
      otpLoginCubit.loginWithOtp(otpNumberController.text.trim());
    }
  }
}
