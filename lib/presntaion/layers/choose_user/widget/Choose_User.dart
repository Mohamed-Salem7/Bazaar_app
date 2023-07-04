import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseUserBody extends StatelessWidget {
  const ChooseUserBody(
      {Key? key, required this.title, required this.image, required this.index})
      : super(key: key);

  final String title;
  final String image;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AuthCubit.get(context);

          return Column(
            children: [
              if (index == 0)
                Container(
                  alignment: Alignment.center,
                  width: 126.w,
                  height: 126.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.r),
                    color: AppColor.white,
                    border: Border.fromBorderSide(BorderSide(color: AppColor.mainColor,width: 2.w)),
                    boxShadow: [
                      BoxShadow(
                        color: cubit.changeSelectUserSallers
                            ? Colors.transparent
                            : AppColor.black.withOpacity(0.16.spMin),
                        offset: Offset(0.w, 1.h),
                        blurRadius: 5.r,
                      ),
                    ],
                  ),
                  child: Image(
                    image: AssetImage(
                      image,
                    ),
                    height: 50.h,
                    width: 50.w,
                  ),
                ),
              if (index == 1)
                Container(
                  alignment: Alignment.center,
                  width: 126.w,
                  height: 126.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.r),
                    color: AppColor.white,
                    boxShadow: [
                      BoxShadow(
                        color: (cubit.changeSelectUserCustomers)
                            ? AppColor.mainColor.withOpacity(0.9.spMin)
                            : AppColor.black.withOpacity(0.16.spMin),
                        offset: Offset(0.w, 3.h),
                        blurRadius: 5.r,
                      ),
                    ],
                  ),
                  child: Image(
                    image: AssetImage(
                      image,
                    ),
                    height: 50.h,
                    width: 50.w,
                  ),
                ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 24.0.spMin,
                  color: AppColor.black,
                  letterSpacing: -0.8571428833007813.spMin,
                  height: 0.79.h,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          );
        });
  }
}
