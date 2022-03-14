import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vitt_india_pos/core/constants/asset_images.dart';
import 'package:vitt_india_pos/core/constants/themes.dart';
import 'package:vitt_india_pos/features/keypad/presentation/widgets/keypad_key.dart';

class CustomKeyboard extends StatefulWidget {
  const CustomKeyboard(
      {Key? key,
      this.callback,
      this.initEvent,
      this.onResult,
      this.autoBack = false,
      required this.keyList})
      : super(key: key);

  final Function? callback;
  final Function? initEvent;
  final Function? onResult;
  final bool autoBack;
  final List<String> keyList;

  @override
  _CustomKeyboardState createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard> {
  String data = "";
  TextEditingController pinTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: VittColors.headerBlue),
          decoration: const InputDecoration(
              counterText: "",
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none),
          readOnly: true,
          controller: pinTextController,
          maxLength: 6,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
        ),
        SizedBox(height: 25.h),
        keyboardWidget(),
      ],
    );
  }

  Widget keyboardWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [normalWidget(), botomWidget()],
    );
  }

  void onKeyDown(BuildContext context, String text) {
    if ("12" == text) {
      if (data.length >= 4) {
        widget.onResult!(data);
      }
      return;
    }
    if ("10" == text) {
      widget.callback!();
      return;
    }
    if ("11" == text) {
      setState(() {
        data = data.isNotEmpty ? data.substring(0, data.length - 1) : "";
        pinTextController.text = data;
      });
      return;
    }
    if (data.length < 6) {
      setState(() {
        data += text;
        pinTextController.text += text;
      });
    }
  }

  Widget normalWidget() {
    return Wrap(
      children: widget.keyList
          .sublist(0, 9)
          .map((item) =>
              KeypadKey(text: item, onTap: (val) => onKeyDown(context, item)))
          .toList(),
    );
  }

  Widget botomWidget() {
    return Column(
      children: [
        Row(
          children: [
            KeypadKey(
              keyColor: VittColors.cancelButtonRed,
              text: "X",
              onTap: (val) => onKeyDown(context, widget.keyList[10]),
            ),
            KeypadKey(
              text: widget.keyList[9],
              onTap: (val) => onKeyDown(context, widget.keyList[9]),
            ),
            KeypadKey(
              keyColor: VittColors.clearOrange,
              icon: AssetImages.clear,
              onTap: (val) => onKeyDown(context, widget.keyList[11]),
            ),
          ],
        ),
        KeypadKey(
          keyColor: VittColors.successGreen,
          text: "Enter",
          textStyle: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
          keyWidth: MediaQuery.of(context).size.width,
          onTap: (val) => onKeyDown(context, widget.keyList[12]),
        ),
      ],
    );
  }
}
