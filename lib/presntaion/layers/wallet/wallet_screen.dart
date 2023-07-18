import 'package:bazaar/presntaion/layers/wallet/information_wallet.dart';
import 'package:bazaar/presntaion/layers/wallet/widget/Info_wallet.dart';
import 'package:bazaar/presntaion/layers/wallet/widget/SIM.dart';
import 'package:bazaar/presntaion/layers/wallet/widget/data_wallet.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            TitleWidget(
              title: 'المحفظة',
              isEditProfile: false,
              context: context,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h,right: 15.w,left: 15.w),
              child: InkWell(
                onTap: ()
                {
                  Get.to(const InformationWallet(image: AppImage.wallet1Img),transition: transition[1],);
                },
                borderRadius: BorderRadius.circular(15.r,),
                child: Container(
                  width: 332.w,
                  height: 210.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12.r,
                    ),
                    image: const DecorationImage(
                      image: AssetImage(
                        AppImage.wallet1Img,
                      ),
                    ),
                  ),
                  child: const DataWallet(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h,right: 15.w,left: 15.w),
              child: InkWell(
                onTap: ()
                {
                  Get.to(const InformationWallet(image: AppImage.wallet2Img),transition: transition[1],);
                },
                borderRadius: BorderRadius.circular(15.r,),
                child: Container(
                  width: 332.w,
                  height: 210.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12.r,
                    ),
                    image: const DecorationImage(
                      image: AssetImage(
                        AppImage.wallet2Img,
                      ),
                    ),
                  ),
                  child: const DataWallet(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
