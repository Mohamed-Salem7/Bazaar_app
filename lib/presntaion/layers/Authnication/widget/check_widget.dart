import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/presntaion/layers/Authnication/Rules_Screen.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({Key? key, required this.cubit}) : super(key: key);


  final AuthCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.scale(
          scale: 1.2.spMin,
          child: Checkbox(
            value: cubit.checkBox,
            activeColor: AppColor.mainColor,
            onChanged: (v) {
              cubit.changeCheckBox(v);
            },
          ),
        ),
        Text(
          'أوافق على',
          style: GoogleFonts.tajawal(
            fontSize: 14.sp,
            color: AppColor.black2,
            letterSpacing: -0.5000000152587891.spMin,
            height: 1.36.h,
          ),
        ),
        TextButton(
          onPressed: ()
          {
            Get.to(const RulesScreen());
          },
          child: Text(
            'الشروط والأحكام',
            style: GoogleFonts.tajawal(
              fontSize: 14.sp,
              color: AppColor.mainColor,
              letterSpacing: -0.5000000152587891.spMin,
              fontWeight: FontWeight.w600,
              height: 1.36.h,
            ),
          ),
        ),
      ],
    );
  }
}
