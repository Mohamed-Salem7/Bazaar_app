import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.title, required this.function, required this.isNewProduct})
      : super(key: key);

  final String title;
  final Function() function;
  final bool isNewProduct;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return InkWell(
          borderRadius: BorderRadius.circular(12.r),
          onTap: function,
          child: Container(
            alignment: Alignment(0.0.w, 0.03.h),
            width:  isNewProduct ? 326.w : 306.0.w,
            height: 50.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0.r),
              color: AppColor.mainColor,
            ),
            child: Text(
              title,
              style: GoogleFonts.tajawal(
                fontSize: 14.0.spMin,
                color: AppColor.white,
                letterSpacing: -0.5000000152587891.spMin,
                height: 1.36.h,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
