import 'package:bazaar/presntaion/layers/wallet/widget/data_wallet.dart';
import 'package:bazaar/presntaion/layers/wallet/widget/field_wallet.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationWallet extends StatelessWidget {
  const InformationWallet({Key? key, required this.image}) : super(key: key);

  final String image;

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
              padding: EdgeInsets.only(
                  top: 10.h, right: 15.w, left: 15.w, bottom: 40.h),
              child: Container(
                width: 332.w,
                height: 210.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12.r,
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                  ),
                ),
                child: const DataWallet(),
              ),
            ),
            const FieldWallet(title: 'الاسم كامل', isSale: false,textInputType: TextInputType.text,),
            const FieldWallet(title: 'المبلغ', isSale: true,textInputType: TextInputType.number,),
          ],
        ),
      ),
    );
  }
}
