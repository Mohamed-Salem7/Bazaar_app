import 'package:bazaar/presntaion/layers/details_store/widget/Info_Store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/address_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/app_bar.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/avatar_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/background_image_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/background_shadow_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/name_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/rate_sale_container.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsStoreScreen extends StatelessWidget {
  const DetailsStoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            AppBarStore(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 16.r,
                    backgroundColor: AppColor.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image(
                        image: const AssetImage(AppImage.favoriteUnSelImg),
                        width: 20.w,
                        height: 20.h,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                    },
                    child: Container(
                      alignment: Alignment(0.02.w, -0.05.h),
                      width: 25.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: AppColor.white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.black.withOpacity(0.16.spMin),
                            offset: Offset(0.w, 3.h),
                            blurRadius: 6.r,
                          ),
                        ],
                      ),
                      child: Image(
                          image: const AssetImage(
                            AppImage.filtersImg,
                          ),
                          width: 18.w,
                          height: 17.5.h),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
