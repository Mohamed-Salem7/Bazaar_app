import 'package:bazaar/presntaion/utils/Global widget/Title_Widget.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Main_Button.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const TitleWidget(title: 'نسيت كلمة المرور',isEditProfile: false),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 225.w,
                  height: 201.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImage.forgetImg),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                TextFieldAuth(
                  isPassword: false,
                  textInputType: TextInputType.emailAddress,
                  title: 'البريد الإلكتروني',
                  icon: AppImage.emailImg,
                ),
                SizedBox(
                  height: 20.h,
                ),
                MainButton(
                  title: 'إرسال (25)',
                  function: () {},
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'إعادة إرسال',
                    style: GoogleFonts.tajawal(
                      fontSize: 14.spMax,
                      color: AppColor.mainColor,
                      letterSpacing: -0.5000000152587891.spMin,
                      fontWeight: FontWeight.w500,
                      height: 1.36.h,
                    ),
                    textAlign: TextAlign.center,
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
