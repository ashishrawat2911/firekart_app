import 'package:core/core.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:widgets/widgets.dart';

import '../state/phone_login_state.dart';
import '../view_model/phone_login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var phoneLoginCubit = DI.container<PhoneLoginViewModel>();
  TextEditingController phoneNumberController = TextEditingController();
  Validator validator = Validator();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ValueNotifier<String> phoneNumberNotifier = ValueNotifier('+91');

  @override
  void initState() {
    super.initState();
    phoneNumberController.addListener(() {
      phoneLoginCubit.validateButton(phoneNumberController.text);
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
      margin: const EdgeInsets.only(top: 50, right: 16, left: 16),
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                StringsConstants.login,
                style: AppTextStyles.t27,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                StringsConstants.phoneLoginText,
                style: AppTextStyles.t18,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CountryCodePicker(
                    onChanged: (value) {
                      phoneNumberNotifier.value = value.dialCode!;
                    },
                    initialSelection: 'IN',
                    favorite: const ['+91', 'IN'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  ),
                  Expanded(
                    child: CustomTextField(
                      textEditingController: phoneNumberController,
                      hint: StringsConstants.mobileNumber,
                      validator: validator.validateMobile,
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              BlocConsumer<PhoneLoginViewModel, PhoneLoginState>(
                bloc: phoneLoginCubit,
                listener: (BuildContext context, PhoneLoginState state) {},
                builder: (BuildContext context, PhoneLoginState state) {
                  return CommonButton(
                    title: StringsConstants.continueText,
                    height: 50,
                    isEnabled: state.isButtonEnabled,
                    replaceWithIndicator: state.phoneLoading,
                    onTap: () {
                      onButtonTap();
                    },
                  );
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
      NavigationHandler.navigateTo(OtpLoginScreenRoute(
              phoneNumber:
                  phoneNumberNotifier.value + phoneNumberController.text))
          .then((value) {
        if (value != null && value as bool) {
          phoneNumberController.clear();
        }
      });
    }
  }
}
