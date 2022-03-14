import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vitt_india_pos/core/constants/asset_images.dart';
import 'package:vitt_india_pos/core/constants/themes.dart';
import 'package:vitt_india_pos/core/widgets/app_bar.dart';
import 'package:vitt_india_pos/features/keypad/presentation/widgets/keypad.dart';
import 'package:vitt_india_pos/generated/l10n.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({Key? key}) : super(key: key);

  @override
  _PinScreenState createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  List<String> keylist = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "0",
    "10",
    "11",
    "12"
  ];

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      // cancel transaction
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VittColors.offWhiteBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: VittAppBar(
          leadingIcon: AssetImages.chevronLeft,
          title: S.of(context).enterPin,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, bottom: 38.h),
                child: SvgPicture.asset(
                  AssetImages.vittIndiaWithLogo,
                  width: 215.w,
                  height: 48.h,
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        gradient: VittColors.quickViewLightGradient),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              S.of(context).requestedBy,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: VittColors.offWhiteBackground,
                                      fontWeight: FontWeight.w400),
                            ),
                            Text(
                              S.of(context).amount,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: VittColors.offWhiteBackground,
                                      fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              constraints: BoxConstraints(maxWidth: 138.w),
                              child: Text(
                                "Ratnadeep Supermart",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: Colors.white,
                                        height: 1.5.h,
                                        fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              constraints: BoxConstraints(maxWidth: 100.w),
                              child: FittedBox(
                                child: Text(
                                  "₹99,99,999.99",
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color: Colors.white,
                                          height: 1.5.h,
                                          fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          Column(
            children: [
              CustomKeyboard(
                initEvent: (value) {
                  debugPrint(value.toString());
                },
                callback: () {},
                keyList: keylist,
                onResult: (data) {
                  debugPrint(data.toString());
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
