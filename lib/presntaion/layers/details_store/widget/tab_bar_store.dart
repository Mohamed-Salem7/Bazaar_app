import 'package:bazaar/controller/main/cubit.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarStore extends StatelessWidget {
  const TabBarStore({Key? key, required this.cubit, required this.i, required this.title}) : super(key: key);

  final MainCubit cubit;
  final int i;
  final String title;
  @override
  Widget build(BuildContext context) {
    int i = 0;
    return  Padding(
      padding: this.i == 0 ? EdgeInsets.only(left: 0.w) : (this.i == 1 ? EdgeInsets.only(right: 20.w,left: 20.w): EdgeInsets.only(right: 0.w) ),
      child: InkWell(
        onTap: () {
          i = this.i;
          cubit.changeIndexStoreScreen(i);
        },
        borderRadius: BorderRadius.circular(
          11.r,
        ),
        child: Container(
          alignment: Alignment(0.w, 0.14.h),
          width: 65.w,
          height: 25.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11.r),
            color: cubit.indexStore == this.i
                ? AppColor.white
                : AppColor.white9,
            boxShadow: cubit.indexStore == this.i
                ? [
              BoxShadow(
                color: AppColor.mainColor
                    .withOpacity(0.11.spMin),
                offset: Offset(0.w, 3.h),
                blurRadius: 6.r,
              ),
            ]
                : null,
          ),
          child: Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 16.spMin,
              color: AppColor.black,
              letterSpacing: -0.5714285888671875.spMin,
              height: 1.19.h,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
