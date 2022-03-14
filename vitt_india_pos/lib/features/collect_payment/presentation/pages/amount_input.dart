import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vitt_india_pos/core/constants/asset_images.dart';
import 'package:vitt_india_pos/core/constants/const.dart';
import 'package:vitt_india_pos/core/constants/themes.dart';
import 'package:vitt_india_pos/core/utils/utils.dart';
import 'package:vitt_india_pos/core/widgets/app_bar.dart';
import 'package:vitt_india_pos/core/widgets/global_snackbar.dart';
import 'package:vitt_india_pos/core/widgets/primary_cta.dart';
import 'package:vitt_india_pos/features/collect_payment/presentation/pages/card_reader.dart';
import 'package:vitt_india_pos/generated/l10n.dart';

class AmountInput extends StatefulWidget {
  const AmountInput({Key? key}) : super(key: key);

  static String routeName = "/collect-amount-input";

  @override
  _AmountInputState createState() => _AmountInputState();
}

class _AmountInputState extends State<AmountInput> {
  final TextEditingController _amountEditingController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15.w, top: 12.h),
                  child: SvgPicture.asset(
                    AssetImages.logo,
                    width: 50.w,
                    height: 50.h,
                  ),
                ),
                SizedBox(height: 45.h),
                Text(
                  S.of(context).enterAmountToCollect,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      height: 1.5.h,
                      color: VittColors.headerBlue,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 45.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(rupeeUnicode,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              color: VittColors.blackBodyText,
                              fontWeight: FontWeight.w600,
                            )),
                    SizedBox(width: 5.w),
                    AutoSizeTextField(
                      textAlignVertical: TextAlignVertical.center,
                      fullwidth: false,
                      cursorWidth: 1,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^\d*\.?\d{0,2}')),
                      ],
                      controller: _amountEditingController,
                      onChanged: (value) {},
                      autofocus: true,
                      textAlign: TextAlign.left,
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        hintText: '0',
                        hintStyle:
                            Theme.of(context).textTheme.headline2?.copyWith(
                                  color: VittColors.blackBodyText,
                                  fontWeight: FontWeight.w600,
                                ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                      cursorColor: VittColors.headerBlue,
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                            color: VittColors.headerBlue,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                Container(
                  constraints: const BoxConstraints(maxWidth: 600),
                  width: MediaQuery.of(context).size.width,
                  child: PrimaryCta(
                    label: S.of(context).collectPayment,
                    onPress: () {
                      final amount =
                          double.tryParse(_amountEditingController.text);
                      if (amount == null || amount == 0) {
                        showSnackbar(
                            S.of(context).collectionMustBeAtleast(rupeeUnicode),
                            context: context);
                      } else {
                        // on valid amount Entry
                        Get.to(() => const CardReader());
                      }
                    },
                  ),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    if (removeKeyboardFocus(context)) {
                      Get.back();
                    } else {
                      removeKeyboardFocus(context);
                      Get.back();
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10.r),
                    child: Text(
                      S.of(context).cancel,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(color: VittColors.primaryBlue),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
