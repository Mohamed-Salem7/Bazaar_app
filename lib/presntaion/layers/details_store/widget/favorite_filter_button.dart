import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteFilterButton extends StatelessWidget {
  const FavoriteFilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
