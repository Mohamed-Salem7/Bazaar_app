import 'package:bazaar/presntaion/layers/Setting/screen/contact_us/widget/text_field_message.dart';
import 'package:bazaar/presntaion/layers/new_product/widget/cancel_button.dart';
import 'package:bazaar/presntaion/layers/new_product/widget/widget_add_photo.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Main_Button.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWidget(
                title: 'إضافة منتج جديد',
                isEditProfile: false,
                context: context,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'الوصف',
                      style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        color: AppColor.black2,
                        letterSpacing: -0.33764706039428716.spMin,
                        height: 1.57.h,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      width: 326.w,
                      height: 129.h,
                      padding: EdgeInsets.all(5.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColor.white3,
                      ),
                      child: TextFormField(
                        cursorColor: AppColor.mainColor,
                        maxLines: 10,
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          color: AppColor.black2,
                          letterSpacing: -0.33764706039428716.spMin,
                          height: 1.57.h,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
                          hintText: 'أدخل الوصف',
                          hintStyle: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            color: const Color(0xFFBEBEBE),
                            letterSpacing: -0.33764706039428716.spMin,
                            height: 1.57.h,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AddPhotoVideo(
                title: 'الصورة الرئيسية',
                text: ' إضافة الصورة الرئيسية',
                image: AppImage.cameraImg,
                function: () {},
                isFirst: true,
              ),
              AddPhotoVideo(
                title: 'الصورة الفرعية',
                text: ' إضافة الصورة الفرعية',
                image: AppImage.cameraImg,
                function: () {},
                isFirst: false,
              ),
              AddPhotoVideo(
                title: 'إضافة فيديو (إختياري)',
                text: 'فيديو واحد فقط',
                image: AppImage.videoImg,
                function: () {},
                isFirst: false,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child: MainButton(
                  title: 'إضافة المنتج',
                  function: () {},
                  isNewProduct: true,
                ),
              ),
              const CancelButton(),
            ],
          ),
        ),
      ),
    );
  }
}
