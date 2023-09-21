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
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:assets/res/colors.gen.dart';

class CommonExpandableWidget extends StatefulWidget {
  const CommonExpandableWidget({
    Key? key,
    this.backgroundColor,
    this.title,
    this.titleStyle,
    this.voidCallbackScroll,
    this.children,
    this.margin,
    this.color,
  }) : super(key: key);
  final Color? backgroundColor;
  final String? title;
  final TextStyle? titleStyle;
  final EdgeInsets? margin;
  final VoidCallback? voidCallbackScroll;
  final List<Widget>? children;
  final Color? color;

  @override
  State createState() => _CommonExpandableWidgetState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ColorProperty('backgroundColor', backgroundColor))
      ..add(StringProperty('title', title))
      ..add(DiagnosticsProperty<TextStyle?>('titleStyle', titleStyle))
      ..add(DiagnosticsProperty<EdgeInsets?>('margin', margin))
      ..add(
        ObjectFlagProperty<VoidCallback?>.has(
          'voidCallbackScroll',
          voidCallbackScroll,
        ),
      )
      ..add(ColorProperty('color', color));
  }
}

class _CommonExpandableWidgetState extends State<CommonExpandableWidget>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
  bool isOpened = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    animation = Tween<double>(begin: 0, end: pi).animate(animationController);
  }

  @override
  Widget build(BuildContext context) => Container(
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

  GestureDetector topRow() => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (isOpened) {
            widget.voidCallbackScroll?.call();
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
                      color: widget.color ?? AppColors.color4C4C6F,
                      // color: Styles.whiteColor,
                    ),
                  ),
                  //  child:
                ),
              ),
            ],
          ),
        ),
      );
}
