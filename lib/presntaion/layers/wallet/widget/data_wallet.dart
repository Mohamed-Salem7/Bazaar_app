import 'package:bazaar/presntaion/layers/wallet/widget/Info_wallet.dart';
import 'package:bazaar/presntaion/layers/wallet/widget/SIM.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/App_Color.dart';

class DataWallet extends StatelessWidget {
  const DataWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(
        right: 20.w,
        left: 20.w,
        top: 30.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 40.w,
                height: 25.h,
                child: const Image(
                  image: AssetImage(
                    AppImage.logoWalletImg,
                  ),
                ),
              ),
              Text(
                'Finaci',
                style: TextStyle(
                  fontFamily: 'Karla-Bold',
                  fontSize: 20.spMin,
                  color: AppColor.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Text(
              '**** **** ****',
              style: TextStyle(
                fontFamily: 'Karla-Bold',
                fontSize: 24.spMin,
                color: AppColor.white,
              ),
            ),
          ),
          const Sim(),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35.w),
                  child: const InfoWallet(title: 'Expiry date',title2: '02/30'),
                ),
                const InfoWallet(title: 'Card Holder Name',title2: 'Austin Hammond'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
