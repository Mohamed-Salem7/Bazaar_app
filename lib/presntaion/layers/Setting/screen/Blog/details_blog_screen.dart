import 'package:bazaar/presntaion/layers/Setting/screen/Blog/widget/info_blog_post.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/Blog/widget/information_blog.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsBlogScreen extends StatelessWidget {
  const DetailsBlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: 365.w,
                    height: 366.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImage.postImg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 360.w,
                    height: 406.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColor.black2.withOpacity(0.spMin),
                          AppColor.black
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 70.h,
                          ),
                          const InfoBlogPost(isPost: true, isDetails: true),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40.h,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColor.white,
                        size: 20.spMin,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 43.h,
                    right: 150.w,
                    left: 150.w,
                    child: Text(
                      'المدونة',
                      style: GoogleFonts.tajawal(
                        fontSize: 16.spMax,
                        color: AppColor.white,
                        letterSpacing: -0.5714285888671875.spMin,
                        height: 2.19.h,
                      ),
                    ),
                  ),
                  const InformationBlog(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
