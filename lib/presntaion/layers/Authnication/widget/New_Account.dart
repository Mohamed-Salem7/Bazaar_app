import 'package:bazaar/presntaion/layers/Authnication/register_screen.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewAccountWidget extends StatelessWidget {
  const NewAccountWidget({Key? key, required this.isLogin}) : super(key: key);

  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
           isLogin ?  'ليس لديك حساب ؟ ' : 'لديك حساب بالفعل ؟',
          style: GoogleFonts.tajawal(
            fontSize: 14.0.sp,
            color: AppColor.black,
            letterSpacing: -0.5000000152587891.spMin,
            height: 1.36.h,
          ),
        ),
        TextButton(
          onPressed: ()
          {
            Get.to(const RegisterScreen(),transition: Transition.rightToLeft);
          },
          child: Text(
            isLogin ?  'إنشاء حساب' : 'تسجيل دخول',
            style: GoogleFonts.tajawal(
              fontSize: 14.0.sp,
              color: isLogin ? AppColor.black : AppColor.mainColor,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.5000000152587891.spMin,
              height: 1.36.h,
            ),
          ),
        ),

      ],
    );
  }
}
