import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/core/utils/validator.dart';
import 'package:fluttercommerce/di/di.dart';
import 'package:fluttercommerce/core/navigation/navigation_handler.dart';
import 'package:fluttercommerce/features/app/res/string_constants.dart';
import 'package:fluttercommerce/features/app/res/styles.dart';
import 'package:fluttercommerce/features/app/res/text_styles.dart';
import 'package:fluttercommerce/features/common/widgets/commom_text_field.dart';
import 'package:fluttercommerce/features/common/widgets/common_app_loader.dart';
import 'package:fluttercommerce/features/common/widgets/common_button.dart';
import 'package:fluttercommerce/features/login/otp_login/view_model/otp_login_view_model.dart';
import 'package:fluttercommerce/features/login/otp_login/state/otp_login_state.dart';

class OtpLoginScreen extends StatefulWidget {
  OtpLoginScreen({this.phoneNumber, Key? key}) : super(key: key);

  final String? phoneNumber;

  @override
  _OtpLoginScreenState createState() => _OtpLoginScreenState();
}

class _OtpLoginScreenState extends State<OtpLoginScreen> {
  var otpLoginCubit = DI.container<OtpLoginViewModel>();
  TextEditingController otpNumberController = TextEditingController();
  Validator validator = Validator();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              body: Column(
                children: <Widget>[_loginCard()],
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
                style: AppTextStyles.t27,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                StringsConstants.mobileVerificationDesc,
                style: AppTextStyles.t18,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  InkWell(
                    child: Text(
                      StringsConstants.changeNumber,
                      style: AppTextStyles.t29,
                    ),
                    onTap: () {
                      NavigationHandler.pop(true);
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
              BlocConsumer<OtpLoginViewModel, OtpLoginState>(
                bloc: otpLoginCubit,
                listener: (BuildContext context, OtpLoginState state) {
                  if (state.otp != null) {
                    otpNumberController.text = state.otp!;
                  }
                },
                builder: (BuildContext context, OtpLoginState state) {
                  return CommonButton(
                    title: StringsConstants.confirmOtp,
                    height: 50,
                    isEnabled: state.isButtonEnabled,
                    replaceWithIndicator: state.confirmOtpLoading,
                    onTap: () {
                      onButtonTap();
                    },
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              BlocConsumer<OtpLoginViewModel, OtpLoginState>(
                bloc: otpLoginCubit,
                listener: (BuildContext context, OtpLoginState state) {},
                builder: (BuildContext context, OtpLoginState state) {
                  if (state.resendOtpLoading) {
                    return CommonAppLoader();
                  }
                  return GestureDetector(
                    onTap: () {
                      otpLoginCubit.sendOtp(widget.phoneNumber!);
                    },
                    child: Text(
                      StringsConstants.resendOtp,
                      style: AppTextStyles.t29,
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text(
                  StringsConstants.goBack,
                  style: AppTextStyles.t29,
                ),
                onTap: () {
                  NavigationHandler.pop();
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

  void onButtonTap({bool isResend = false}) {
    if (_formKey.currentState!.validate()) {
      otpLoginCubit.loginWithOtp(otpNumberController.text.trim(), isResend);
    }
  }
}
