import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vitt_india_pos/core/constants/asset_images.dart';
import 'package:vitt_india_pos/core/constants/themes.dart';
import 'package:vitt_india_pos/core/utils/utils.dart';
import 'package:vitt_india_pos/core/widgets/app_bar.dart';
import 'package:vitt_india_pos/generated/l10n.dart';

class NoInternet extends StatefulWidget {
  const NoInternet({Key? key}) : super(key: key);

  static String routeName = "/no-internet";

  @override
  State<NoInternet> createState() => _NoInternetState();
}

class _NoInternetState extends State<NoInternet> {
  bool isReadyForExit = false;

  Future<void> _prepareForExit() async {
    // await Fluttertoast.showToast(msg: S.of(context).pressAgainToExit);
    await Future.delayed(const Duration(seconds: 2), () {
      isReadyForExit = false;
    });
  }

  void _exitApp() {
    try {
      exit(0);
    } catch (_) {
      SystemNavigator.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if (!isReadyForExit) {
            isReadyForExit = true;

            /// shows a toast to user and waits for 2 seconds to exit the app.
            await _prepareForExit();
          } else {
            _exitApp();
          }
          return false;
        },
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(56.h),
              child: VittAppBar(
                actionWidgets: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        checkForInternetConnection();
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AssetImages.refresh,
                              color: VittColors.headerBlue,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              'Retry',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(color: VittColors.headerBlue),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).oopsNoInternet,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          height: 1.5.h,
                          fontWeight: FontWeight.w700,
                          color: VittColors.headerBlue)),
                  SizedBox(height: 5.h),
                  Text(S.of(context).pleaseCheckYourInternet,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(color: VittColors.appBarTitleGrey)),
                ],
              ),
            )));
  }
}
