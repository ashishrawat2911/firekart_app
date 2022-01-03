import 'dart:math';

import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CommonExpandedWidget extends StatefulWidget {
  const CommonExpandedWidget(
      {Key? key,
      this.backgroundColor,
      this.title,
      this.titleStyle,
      this.voidCallbackScroll,
      this.children,
      this.margin,
      this.color})
      : super(key: key);
  final Color? backgroundColor;
  final String? title;
  final TextStyle? titleStyle;
  final EdgeInsets? margin;
  final VoidCallback? voidCallbackScroll;
  final List<Widget>? children;
  final Color? color;

  @override
  _CommonExpandedWidgetState createState() => _CommonExpandedWidgetState();
}

class _CommonExpandedWidgetState extends State<CommonExpandedWidget>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
  bool isOpened = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    animation = Tween(begin: 0.0, end: pi).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      child: AnimatedCrossFade(
        duration: const Duration(milliseconds: 100),
        crossFadeState:
            !isOpened ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        firstChild: topRow(),
        secondChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topRow(),
            const SizedBox(
              height: 23,
            ),
            ...?widget.children,
          ],
        ),
      ),
    );
  }

  GestureDetector topRow() {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (isOpened) {
            if (widget.voidCallbackScroll != null) widget.voidCallbackScroll!();
            animationController.forward();
          } else {
            animationController.reverse();
          }
          setState(() {
            isOpened = !isOpened;
          });
        },
        child: SizedBox(
          height: 52,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.title!,
                  style: widget.titleStyle,
                ),
              ),
              Center(
                child: AnimatedBuilder(
                  animation: animationController,
                  builder: (context, child) => Transform.rotate(
                    angle: animation.value,
                    child: Icon(
                      Icons.expand_more,
                      color: widget.color ?? AppColors.color81819A,
                      // color: Styles.whiteColor,
                    ),
                  ),
                  //  child:
                ),
              ),
            ],
          ),
        ));
  }
}
