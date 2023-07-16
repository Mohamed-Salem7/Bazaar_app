import 'package:bazaar/presntaion/layers/Setting/screen/Blog/widget/info_blog_post.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostBlog extends StatelessWidget {
  const PostBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 155.w,
          height: 267.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            image: const DecorationImage(
              image: AssetImage(AppImage.blogImg),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColor.white9.withOpacity(0.12.spMin),
                offset: Offset(0.w, 6.h),
                blurRadius: 12.r,
              ),
            ],
          ),
        ),
        Container(
          width: 154.w,
          height: 246.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.black2.withOpacity(0.0.spMin),
                AppColor.black
              ],
            ),
          ),
          child: const InfoBlogPost(isPost: true,isDetails : false),
        ),
      ],
    );
  }
}
