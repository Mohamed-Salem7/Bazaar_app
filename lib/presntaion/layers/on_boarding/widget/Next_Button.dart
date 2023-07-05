import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/layers/discover/discover_screen.dart';
import 'package:bazaar/presntaion/layers/on_boarding/main_out_booarding.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/component/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(12.r),
                onTap: () {
                  if(AuthCubit.get(context).pageController.page! < 2) {
                    AuthCubit
                        .get(context)
                        .pageController
                        .nextPage(duration: const Duration(milliseconds: 100),
                      curve: Curves.easeIn,);
                  }else{
                    navigatorFinished(context, const DiscoverScreen());
                  }

                },
                child: Container(
                  alignment: Alignment(0.0.w, 0.03.h),
                  width: 306.0.w,
                  height: 50.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0.r),
                    color: AppColor.mainColor,
                  ),
                  child: Text(
                    'التالي',
                    style: GoogleFonts.tajawal(
                      fontSize: 14.0.spMin,
                      color: AppColor.white,
                      letterSpacing: -0.5000000152587891.spMin,
                      height: 1.36.h,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
            ],
          );
        });
  }
}
