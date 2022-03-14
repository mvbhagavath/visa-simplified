import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vitt_india_pos/core/constants/themes.dart';

class KeypadKey extends StatefulWidget {
  const KeypadKey(
      {Key? key,
      this.onTap,
      this.text = "",
      this.keyWidth,
      this.textStyle,
      this.keyColor = VittColors.offWhiteBackground,
      this.icon = ""})
      : super(key: key);

  final String text;
  final Function? onTap;
  final double? keyWidth;
  final Color keyColor;
  final TextStyle? textStyle;
  final String icon;

  @override
  _KeypadKeyState createState() => _KeypadKeyState();
}

class _KeypadKeyState extends State<KeypadKey> {
  GlobalKey anchorKey = GlobalKey();
  void onTap() {
    widget.onTap!("Callback");
  }

  @override
  Widget build(BuildContext context) {
    Widget _getChildWidget() {
      if (widget.icon.isNotEmpty) {
        return SvgPicture.asset(widget.icon);
      }
      return Text(
        widget.text,
        style: widget.textStyle ??
            Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.w700,
                color: widget.keyColor != VittColors.offWhiteBackground
                    ? Colors.white
                    : Colors.black),
      );
    }

    return Container(
      color: widget.keyColor,
      height: 80.h,
      width: widget.keyWidth ?? MediaQuery.of(context).size.width / 3,
      key: anchorKey,
      child: TextButton(
        style: ButtonStyle(
            splashFactory: NoSplash.splashFactory,
            shape: MaterialStateProperty.all(ContinuousRectangleBorder(
                side: BorderSide(
                    color: VittColors.inactiveIndicatorGrey, width: 0.5.w)))),
        onPressed: onTap,
        child: _getChildWidget(),
      ),
    );
  }
}
