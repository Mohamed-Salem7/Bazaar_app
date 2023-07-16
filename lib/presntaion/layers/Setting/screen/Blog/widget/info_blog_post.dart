import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoBlogPost extends StatelessWidget {
  const InfoBlogPost({Key? key, required this.isPost, required this.isDetails})
      : super(key: key);

  final bool isPost;
  final bool isDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        mainAxisAlignment:
            isDetails ? MainAxisAlignment.center : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isDetails)
            Text(
              'نعمل على خلق فرص عمل للنساء\n اللاجئات ذوات الدخل المنخفض\n في فلسطين',
              style: GoogleFonts.roboto(
                fontSize: 12.spMin,
                color: isPost ? AppColor.white : AppColor.black,
                letterSpacing: -0.2894117660522461.spMin,
                height: 1.25.h,
              ),
              textAlign: TextAlign.right,
            ),
          if (isDetails)
            Text(
              'نعمل على خلق فرص عمل للنساء اللاجئات ذوات الدخل\nالمنخفض في فلسطين',
              style: GoogleFonts.roboto(
                fontSize: 18.spMin,
                fontWeight: FontWeight.w600,
                color: AppColor.white,
                letterSpacing: -0.38588235473632815.spMin,
                height: 1.44.h,
              ),
              textAlign: TextAlign.right,
            ),
          if (isDetails)
            Row(
              children: [
                Image(
                  image: const AssetImage(AppImage.person2Img),
                  width: 12.w,
                  height: 14.h,
                ),
                Text(
                  ' محمد ديب ',
                  style: GoogleFonts.roboto(
                    fontSize: 16.spMin,
                    color: AppColor.white,
                    letterSpacing: -0.38588235473632815.spMin,
                    height: 1.44.h,
                  ),
                  textAlign: TextAlign.right,
                ),

                Image(
                  image: const AssetImage(AppImage.location3Img),
                  width: 12.w,
                  height: 14.h,
                ),
                Text(
                  ' فلسطين - غزة',
                  style: GoogleFonts.roboto(
                    fontSize: 16.spMin,
                    color: AppColor.white,
                    letterSpacing: -0.38588235473632815.spMin,
                    height: 1.44.h,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          Row(
            children: [
              Image(
                image: AssetImage(isPost
                    ? AppImage.blogCalendarImg
                    : AppImage.blogCalendar2Img),
                width: 12.w,
                height: 14.h,
              ),
              Text(
                '  فبراير 2022 26 ',
                style: GoogleFonts.roboto(
                  fontSize: 12.spMin,
                  color: isPost ? AppColor.white : AppColor.black,
                  letterSpacing: -0.2894117660522461.spMin,
                  height: 1.83.h,
                ),
              ),
              Image(
                image: AssetImage(isPost
                    ? AppImage.blogCategoryImg
                    : AppImage.blogCategory2Img),
                width: 12.w,
                height: 14.h,
              ),
              Text(
                '  فرص عمل',
                style: GoogleFonts.roboto(
                  fontSize: 12.spMin,
                  color: isPost ? AppColor.white : AppColor.black,
                  letterSpacing: -0.2894117660522461.spMin,
                  height: 1.83.h,
                ),
              ),
              if (isDetails)
                SizedBox(
                    height: 12.h,
                    child: Icon(
                      Icons.visibility_outlined,
                      size: 18.spMin,
                      color: AppColor.white,
                    )),
              if (isDetails)
                Text(
                  'مشاهدة 1,945',
                  style: GoogleFonts.roboto(
                    fontSize: 12.spMin,
                    color: isPost ? AppColor.white : AppColor.black,
                    letterSpacing: -0.2894117660522461.spMin,
                    height: 1.83.h,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
