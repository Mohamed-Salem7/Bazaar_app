import 'package:bazaar/presntaion/layers/details_store/widget/address_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/name_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/rate_sale_container.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoStoreScreen extends StatelessWidget {
  const InfoStoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> text1 = [
      'التقييم',
      'تم بيع',
      'إنضم في',
    ];

    List<String> text2 = [
      '4.9',
      '1.945',
      'أكتوبر 2019',
    ];

    List<bool> isRated = [
      true,
      false,
      false,
    ];

    List<bool> isSalled= [
      false,
      true,
      false,
    ];

    return Positioned(
      top: 160.h,
      right: 30.w,
      left: 30.w,
      child: Container(
        width: 320.w,
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.r),
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.mainColor.withOpacity(0.12.spMin),
              offset: Offset(0.w, 6.h),
              blurRadius: 12.r,
            ),
          ],
        ),
        child: Column(
          children: [
            const NameStore(),
            SizedBox(
              height: 5.h,
            ),
            const AddressStore(),
            SizedBox(
              height: 50.h,
              width: 302.w,
              child: ListView.builder(
                itemCount: 3,
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 3.w),
                    child: RateSaleContainer(
                      text1: text1[index],
                      text2: text2[index],
                      isRated: isRated[index],
                      isSalled:isSalled[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
