import 'package:flutter/material.dart';
import 'package:fluttercommerce/res/app_colors.dart';
import 'package:fluttercommerce/res/text_styles.dart';

class CommonSearchTextField extends StatefulWidget {
  final String? hint;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onChanged;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;

  CommonSearchTextField(
      {@required this.hint,
      this.onSubmitted,
      this.onChanged,
      this.textEditingController,
      this.focusNode});

  @override
  _CommonSearchTextFieldState createState() => _CommonSearchTextFieldState();
}

class _CommonSearchTextFieldState extends State<CommonSearchTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
          focusNode: widget.focusNode,
          controller: widget.textEditingController,
          textInputAction: TextInputAction.search,
          onSubmitted: widget.onSubmitted,
          onChanged: widget.onChanged,
          style: AppTextStyles.normal16Black,
          decoration: InputDecoration(
              hintText: widget.hint,
              contentPadding: EdgeInsets.only(top: 25),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Icon(
                  Icons.search,
                  color: AppColors.black,
                ),
              ),
              fillColor: AppColors.colorF6F5F8,
              filled: true,
              hintStyle: AppTextStyles.normal16Color8E8E92,
              focusColor: AppColors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: AppColors.white, width: 0.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: AppColors.white, width: 0.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: AppColors.white, width: 0.0),
              ))),
    );
  }
}

class CommonSearchBar extends StatefulWidget implements PreferredSizeWidget {
  final ValueChanged<String> onTextChanged;
  final VoidCallback? onBackPressed;
  final VoidCallback? onClosePressed;
  final String? hintText;

  CommonSearchBar(
      {required this.onTextChanged,
      this.hintText,
      this.onBackPressed,
      this.onClosePressed});

  @override
  _CommonSearchBarState createState() => _CommonSearchBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CommonSearchBarState extends State<CommonSearchBar> {
  FocusNode focusNode = FocusNode();
  TextEditingController textEditingController = TextEditingController();
  bool showCross = false;

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      setState(() {
        if (textEditingController.text.length > 0) {
          showCross = true;
        } else {
          showCross = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextField(
        controller: textEditingController,
        autofocus: true,
        focusNode: focusNode,
        onChanged: (value) {
          widget.onTextChanged(value.trim());
        },
        decoration: InputDecoration(
            hintText: widget.hintText,
            contentPadding: EdgeInsets.only(top: 25),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.search,
                color: AppColors.black,
              ),
            ),
            suffixIcon: Visibility(
                visible: showCross,
                child: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      if (textEditingController.text == "") {
                        if (widget.onClosePressed != null) {
                          widget.onClosePressed!();
                        }
                        Navigator.of(context).pop();
                      } else {
                        textEditingController.clear();
                        widget.onTextChanged("");
                      }
                    })),
            fillColor: AppColors.colorF6F5F8,
            filled: true,
            hintStyle: AppTextStyles.normal16Color8E8E92,
            focusColor: AppColors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColors.white, width: 0.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColors.white, width: 0.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColors.white, width: 0.0),
            )),
      ),
    );
  }
}
