import 'package:flutter/material.dart';
import 'package:vitt_india_pos/core/constants/asset_images.dart';
import 'package:vitt_india_pos/core/constants/themes.dart';

class PaymentSuccessful extends StatefulWidget {
  const PaymentSuccessful({Key? key}) : super(key: key);

  static String routeName = "/collect-payment-success";

  @override
  State<PaymentSuccessful> createState() => _PaymentSuccessfulState();
}

class _PaymentSuccessfulState extends State<PaymentSuccessful> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
        (value) => WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
              // handover control to vitt app
            }));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: VittColors.primaryBlue,
        body: Center(
          child: Image.asset(
            AssetImages.paymentSuccess,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
