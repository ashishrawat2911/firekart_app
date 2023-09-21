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
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:assets/res/colors.gen.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final String? hint;
  final String? label;
  final String? initialValue;
  final TextEditingController? textEditingController;
  final TextInputType keyboardType;
  final String errorText;
  final bool obscureText;
  final bool isEnabled;
  final TextCapitalization textCapitalization;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool numberInputFormatter;
  final int? maxLength;
  final int maxLines;
  final Widget? suffix;
  final Widget? prefix;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextStyle? errorStyle;
  final TextStyle? style;
  final bool isValidatorRequired;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final BuildContext? context;
  final Color? fillColor;
  final bool autoFocus;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onChanged;
  final bool inputFormat;
  final double? borderRadius;
  final double? containerHeight;
  final double? elivation;
  final double? contentPadding;
  final Color? errorBorderColor;

  final Color? enabledBorderColor;
  final double? enabledBorderWidth;

  const CustomTextField({
    this.textEditingController,
    this.hint,
    this.label,
    this.containerHeight,
    this.keyboardType = TextInputType.text,
    this.errorText = 'Please enter some text',
    this.textCapitalization = TextCapitalization.none,
    this.validator,
    this.obscureText = false,
    this.inputFormatters,
    this.maxLength,
    this.maxLines = 1,
    this.hintStyle,
    this.labelStyle,
    this.initialValue,
    this.isValidatorRequired = true,
    this.focusNode,
    this.nextFocusNode,
    this.context,
    this.textInputAction,
    this.autoFocus = false,
    final Key? key,
    this.onSubmitted,
    this.inputFormat = true,
    this.numberInputFormatter = false,
    this.errorStyle,
    this.fillColor,
    this.isEnabled = true,
    this.suffix,
    this.prefix,
    this.style,
    this.borderRadius,
    this.elivation = 0.1,
    this.contentPadding,
    this.enabledBorderColor = Colors.transparent,
    this.errorBorderColor,
    this.onChanged,
    this.enabledBorderWidth,
  }) : super(key: key);

  @override
  State createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  void _fieldFocusChange(
    BuildContext context,
    FocusNode currentFocus,
    FocusNode? nextFocus,
  ) {
    currentFocus.unfocus();
    if (nextFocus == null) {
      nextFocus?.unfocus();
    }
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.containerHeight,
      alignment: Alignment.center,
      child: TextFormField(
        maxLengthEnforcement: MaxLengthEnforcement.none,
        autovalidateMode: AutovalidateMode.disabled,
        enabled: widget.isEnabled,
        key: widget.key,
        autofocus: widget.autoFocus,
        textAlign: TextAlign.left,
        showCursor: true,
        focusNode: widget.focusNode,
        textInputAction: widget.textInputAction,
        controller: widget.textEditingController,
        style: widget.style,
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        textCapitalization: TextCapitalization.words,
        initialValue: widget.initialValue,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        validator: widget.isValidatorRequired
            ? widget.validator ??
                (value) {
                  if (value!.isEmpty) {
                    return widget.errorText;
                  } else {
                    return value;
                  }
                }
            : null,
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onSubmitted ??
            (term) {
              _fieldFocusChange(
                widget.context!,
                widget.focusNode!,
                widget.nextFocusNode,
              );
            },
        decoration: InputDecoration(
          contentPadding: widget.contentPadding != null
              ? EdgeInsets.symmetric(
                  horizontal: widget.contentPadding!,
                  vertical: 2,
                )
              : null,
          // fillColor: widget.fillColor ?? AppColors.white,
          filled: true,
          hintText: widget.hint,
          suffixIcon: widget.suffix,
          prefixIcon: widget.prefix,
          hintStyle: widget.hint!.length < 30
              ? widget.hintStyle
              : const TextStyle(fontSize: 15, color: AppColors.dropShadow),
          errorStyle: widget.errorStyle,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.white, width: 0),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.enabledBorderColor!,
              width: widget.enabledBorderWidth ?? 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
