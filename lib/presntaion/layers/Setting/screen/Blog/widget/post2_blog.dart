import 'package:bazaar/presntaion/layers/Setting/screen/Blog/widget/info_blog_post.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Post2Blog extends StatelessWidget {
  const Post2Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 319.w,
      height: 90.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withOpacity(0.12.spMin),
            offset: Offset(0.w, 0.h,),
            blurRadius: 12.r,
            spreadRadius: -7.spMin,
          ),
        ],
      ),
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage(AppImage.blogClothesImg),
              width: 78.w,
              height: 75.h,
            ),
            const InfoBlogPost(isPost: false,isDetails: false),
          ],
        ),
      ),
    );
  }
}
