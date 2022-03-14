import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vitt_india_pos/core/constants/asset_images.dart';
import 'package:vitt_india_pos/core/constants/themes.dart';
import 'package:vitt_india_pos/core/widgets/app_bar.dart';
import 'package:vitt_india_pos/core/widgets/primary_cta.dart';
import 'package:vitt_india_pos/features/keypad/presentation/pages/pin_screen.dart';
import 'package:vitt_india_pos/generated/l10n.dart';

class CardReader extends StatefulWidget {
  const CardReader({Key? key}) : super(key: key);

  @override
  _CardReader createState() => _CardReader();
}

class _CardReader extends State<CardReader> {
  bool deviceReady = true;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      showModalBottomSheet(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  topRight: Radius.circular(10.r))),
          context: context,
          builder: (context) {
            return _getBluetoothPermissionBottomsheet();
          });
    });
  }

  Widget cardReaderStatus(bool completed) {
    if (completed) {
      return SvgPicture.asset(
        AssetImages.circleCheck,
        color: VittColors.primaryBlue,
        width: 20.w,
        height: 20.h,
      );
    }
    return Container(
      width: 16.r,
      height: 16.r,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: VittColors.primaryBlueDisabled),
    );
  }

  Widget _getBluetoothPermissionBottomsheet() {
    return SizedBox(
      height: 280.h,
      child: Column(
        children: [
          SizedBox(height: 45.h),
          SvgPicture.asset(AssetImages.bluetooth,
              color: VittColors.headerBlue, width: 18.w, height: 30.h),
          SizedBox(height: 15.h),
          Text(
            S.of(context).bluetoothRequestText,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w700, color: VittColors.headerBlue),
          ),
          SizedBox(height: 15.h),
          Text(
            S.of(context).bluetoothRequestSubtext,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w700, color: VittColors.subTextGrey),
          ),
          SizedBox(height: 25.h),
          SizedBox(
              width: 298.w,
              child: PrimaryCta(
                  label: S.of(context).allow,
                  onPress: () {
                    Get.back();
                    Get.to(() => const PinScreen());
                  })),
          SizedBox(height: 15.h),
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Text(
              S.of(context).deny,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: VittColors.primaryBlue),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: VittAppBar(
          leadingIcon: AssetImages.chevronLeft,
          title: S.of(context).collectPayment,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30.h),
              SvgPicture.asset(
                AssetImages.cardPayments,
                width: 196.w,
                height: 180.h,
              ),
              SizedBox(height: 30.h),
              Container(
                constraints: BoxConstraints(maxWidth: 198.w),
                child: Text(
                  S.of(context).acceptPaymentsWithSwipe,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: VittColors.headerBlue),
                ),
              ),
              SizedBox(height: 20.h),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 6.h, bottom: 15.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cardReaderStatus(true),
                          Container(
                            width: 1.w,
                            height: 40.h,
                            color: VittColors.primaryBlueDisabled,
                          ),
                          cardReaderStatus(false)
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.of(context).pairWithSwipeReader,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: VittColors.blackBodyText,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5.h),
                            ),
                            Text(S.of(context).pairingInProgress,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(color: VittColors.subTextGrey))
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.of(context).swipeOrTap,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: VittColors.blackBodyText,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5.h),
                            ),
                            Text(S.of(context).deviceNotReady,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(color: VittColors.subTextGrey))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              if (deviceReady)
                Column(
                  children: [
                    Image.asset(AssetImages.pairedCardReader),
                    Text(
                      S.of(context).readyToSwipe,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: VittColors.headerBlue, height: 2.h),
                    ),
                    Text(
                      S.of(context).readyToSwipeSubtext,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: VittColors.subTextGrey, height: 1.5.h),
                    )
                  ],
                ),
              if (!deviceReady)
                Column(
                  children: [
                    Image.asset(AssetImages.cardReaderDetection),
                    Text(
                      S.of(context).pairingWithDevice,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: VittColors.headerBlue),
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
