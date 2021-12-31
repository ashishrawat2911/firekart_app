import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CommonSearchTextField extends StatefulWidget {
  const CommonSearchTextField(
      {Key? key,
      @required this.hint,
      this.onSubmitted,
      this.onChanged,
      this.textEditingController,
      this.focusNode})
      : super(key: key);
  final String? hint;
  final ValueChanged<String>? onSubmitted;
  final ValueChanged<String>? onChanged;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;

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
          style: AppTextStyles.t20,
          decoration: InputDecoration(
              hintText: widget.hint,
              contentPadding: const EdgeInsets.only(top: 25),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Icon(
                  Icons.search,
                  color: AppColors.black,
                ),
              ),
              fillColor: AppColors.colorF6F5F8,
              filled: true,
              hintStyle: AppTextStyles.t34,
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
  const CommonSearchBar(
      {Key? key,
      required this.onTextChanged,
      this.hintText,
      this.onBackPressed,
      this.onClosePressed})
      : super(key: key);
  final ValueChanged<String> onTextChanged;
  final VoidCallback? onBackPressed;
  final VoidCallback? onClosePressed;
  final String? hintText;

  @override
  _CommonSearchBarState createState() => _CommonSearchBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
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
        if (textEditingController.text.isNotEmpty) {
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
            contentPadding: const EdgeInsets.only(top: 25),
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
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      if (textEditingController.text == "") {
                        if (widget.onClosePressed != null) {
                          widget.onClosePressed!();
                        }
                        Navigator.pop(context);
                      } else {
                        textEditingController.clear();
                        widget.onTextChanged("");
                      }
                    })),
            fillColor: AppColors.colorF6F5F8,
            filled: true,
            hintStyle: AppTextStyles.t34,
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
