import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40.h,
          width: 297.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: AppColor.white,
              boxShadow: [
                BoxShadow(
                  color: AppColor.black.withOpacity(0.11.spMin),
                  offset: Offset(0.w, 6.0.h),
                  blurRadius: 12.0.r,
                )
              ]),
          child: TextFormField(
            cursorColor: AppColor.mainColor,
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h,),
                hintText: 'بحث',
                hintStyle: GoogleFonts.montserrat(
                  fontSize: 10.sp,
                  color: const Color(0xff424B4B),
                  height: 1.8.h,
                ),
                prefixIcon: Image(image: const AssetImage(AppImage.searchImg,),width: 19.85.w,height: 19.85.h,)
            ),
          ),
        ),
        Container(
          alignment: Alignment(0.01.w, -0.02.h),
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.0),
            color: AppColor.mainColor,
          ),
          child:  Image(image: const AssetImage(AppImage.filterImg,),width: 18.w,height: 17.48.h,),
        ),
      ],
    );
  }
}
