import 'package:bazaar/presntaion/layers/choose_user/choose_user_screen.dart';
import 'package:bazaar/presntaion/layers/Authnication/register_screen.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonRegister extends StatelessWidget {
  const ButtonRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(12.r),
          onTap: ()
          {
            Get.to(const ChooseUser(),transition: Transition.rightToLeft);
          },
          child: Container(
            alignment: Alignment(0.w, 0.03.h),
            width: 280.w,
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                width: 1.w,
                color: AppColor.mainColor,
              ),
            ),
            child: Text(
              'حساب جديد',
              style: GoogleFonts.tajawal(
                fontSize: 14.spMax,
                color: AppColor.mainColor,
                letterSpacing: -0.5000000152587891.spMin,
                height: 1.36.h,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
