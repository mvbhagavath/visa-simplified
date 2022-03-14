import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vitt_india_pos/core/constants/themes.dart';
import 'package:vitt_india_pos/core/utils/utils.dart';

class VittAppBar extends StatelessWidget {
  const VittAppBar({
    Key? key,
    this.leadingIcon = "",
    this.title = "",
    this.actionWidgets = const [],
    this.onLeadingIconTap,
  }) : super(key: key);

  final String leadingIcon;
  final String title;
  final List<Widget> actionWidgets;
  final Function? onLeadingIconTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      toolbarHeight: 56.h,
      leadingWidth: 56.w,
      leading: leadingIcon.isNotEmpty
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    if (removeKeyboardFocus(context)) {
                      if (onLeadingIconTap != null) {
                        onLeadingIconTap!();
                      } else {
                        Get.back();
                      }
                    } else {
                      removeKeyboardFocus(context);
                    }
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
                    child: SvgPicture.asset(
                      leadingIcon,
                      width: 12.w,
                      height: 16.h,
                      color: VittColors.headerBlue,
                    ),
                  ),
                ),
              ],
            )
          : const Offstage(),
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 15.sp,
            color: VittColors.appBarTitleGrey),
      ),
      backgroundColor: VittColors.offWhiteBackground,
      actions: actionWidgets,
    );
  }
}
