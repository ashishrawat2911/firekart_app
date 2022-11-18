import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttercommerce/core/localization/localization.dart';
import 'package:fluttercommerce/core/state_manager/base_view.dart';
import 'package:fluttercommerce/core/theme/theme_provider.dart';

import '../../../../core/utils/validator.dart';
import '../../../res/styles.dart';
import '../../../routes/app_router.gr.dart';
import '../../../routes/navigation_handler.dart';
import '../../../widgets/commom_text_field.dart';
import '../../../widgets/common_button.dart';
import '../state/phone_login_state.dart';
import '../view_model/phone_login_view_model.dart';

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
                        children: <Widget>[_loginCard(viewModel)],
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }

  Widget _loginCard(PhoneLoginViewModel viewModel) {
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
                Localization.value.login,
                style: ThemeProvider.textTheme.headline2,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                Localization.value.phoneLoginText,
                style: ThemeProvider.textTheme.bodyText2,
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
              BlocConsumer<PhoneLoginViewModel, PhoneLoginState>(
                bloc: viewModel,
                listener: (BuildContext context, PhoneLoginState state) {},
                builder: (BuildContext context, PhoneLoginState state) {
                  return CommonButton(
                    title: Localization.value.continueText,
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
      NavigationHandler.navigateTo<bool?>(OtpLoginScreenRoute(
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
