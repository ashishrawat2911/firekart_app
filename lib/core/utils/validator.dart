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
class Validator {
  String? validateName(String? value) {
    const pattern = r'(^[a-zA-Z ]*$)';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return 'Name is Required';
    } else if (!regExp.hasMatch(value.trim())) {
      return 'Name must be a-z and A-Z';
    }
    return null;
  }

  String? validateMobile(String? value) {
    const pattern = r'(^[0-9]*$)';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return 'Phone number is Required';
    } else if (value.length != 10) {
      return 'Phone number must be 10 digits';
    } else if (!regExp.hasMatch(value)) {
      return 'Phone number must be digits';
    }
    return null;
  }

  String? validate4DigitCode(String? value) {
    const pattern = r'(^[0-9]*$)';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return 'Passcode is Required';
    } else if (value.length != 4) {
      return 'PassCode must be 4 digits';
    } else if (!regExp.hasMatch(value)) {
      return 'PassCode must be digits';
    }
    return null;
  }

  String? validate6DigitToken(String? value) {
    const pattern = r'(^[0-9]*$)';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return 'Please enter a valid token';
    } else if (value.length != 6) {
      return 'PassCode must be 6 digits';
    } else if (!regExp.hasMatch(value)) {
      return 'PassCode must be digits';
    }
    return null;
  }

  String? validatePassCode(String? value) {
    const pattern = r'(^[0-9]*$)';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return 'Passcode is Required';
    } else if (value.length != 6) {
      return 'PassCode must be 6 digits';
    } else if (!regExp.hasMatch(value)) {
      return 'PassCode must be digits';
    }
    return null;
  }

  String? passwordDoNotMatch(String? value, String? confirmValue) {
    const pattern = r'(^[0-9]*$)';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return 'PassCode is Required';
    } else if (value.length != 6) {
      return 'PassCode must be 6 digits';
    } else if (!regExp.hasMatch(value)) {
      return 'PasscodeCode must be digits';
    } else if (value != confirmValue) {
      return 'Password do not match!';
    }
    return null;
  }

  String? validateEmail(String? value) {
    const pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return 'Email is Required';
    } else if (!regExp.hasMatch(value)) {
      return 'Invalid Email';
    } else {
      return null;
    }
  }

  String? validatePinCode(String? value) {
    const pattern = r'(^[0-9]*$)';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return 'Pincode is Required';
    } else if (value.length != 6) {
      return 'Pincode must be 6 digits';
    } else if (!regExp.hasMatch(value)) {
      return 'Pincode must be digits';
    }
    return null;
  }

  String? validateText(String? value, String? text) {
    const pattern = r'(^[a-zA-Z ]*$)';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return '$text is Required';
    } else if (!regExp.hasMatch(value.trim())) {
      return '$text must be a-z and A-Z';
    }
    return null;
  }

  String? validateNumber(String? value, String? desc) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return '$desc is Required';
    }
    return null;
  }
}
