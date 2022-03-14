import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vitt_india_pos/core/constants/themes.dart';

class PrimaryCta extends StatelessWidget {
  const PrimaryCta({
    Key? key,
    required this.label,
    required this.onPress,
    this.buttonStyle,
    this.isCTAEnabled = true,
  }) : super(key: key);

  final String label;
  final Function onPress;
  final ButtonStyle? buttonStyle;
  final bool isCTAEnabled;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        if (isCTAEnabled) onPress();
      },
      style: buttonStyle ??
          OutlinedButton.styleFrom(
              alignment: Alignment.center,
              textStyle: VittTheme.textTheme.bodyText1
                  ?.copyWith(fontWeight: FontWeight.w400),
              padding: EdgeInsets.all(12.r),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.r),
              ),
              backgroundColor: isCTAEnabled
                  ? VittColors.primaryBlue
                  : VittColors.primaryBlueDisabled,
              primary: Colors.white,
              splashFactory: isCTAEnabled
                  ? InkSplash.splashFactory
                  : NoSplash.splashFactory),
      child: Text(
        label,
        textAlign: TextAlign.center,
      ),
    );
  }
}
