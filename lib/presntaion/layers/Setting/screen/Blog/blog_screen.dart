import 'package:bazaar/presntaion/layers/Setting/screen/Blog/details_blog_screen.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/Blog/widget/info_blog_post.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/Blog/widget/post2_blog.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/Blog/widget/post_blog.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/contact_us/widget/body.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/contact_us/widget/text_field_message.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/shipping_addresses/widget/text_field_address.dart';
import 'package:bazaar/presntaion/layers/store/widget/search_field.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Main_Button.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: TitleWidget(
            title: 'المدونة', isEditProfile: false, context: context),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SearchField(isBlog: false),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: SizedBox(
                    height: 267.h,
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(0),
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: ()
                          {
                            Get.to(const DetailsBlogScreen(),transition: transition[0]);
                          },
                          child: const PostBlog(),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 10.w,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12.r),
                          onTap: () {
                            Get.to(const DetailsBlogScreen(),
                                transition: transition[0]);
                          },
                          child: const Post2Blog(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
