import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldAuth extends StatelessWidget {
  TextFieldAuth({Key? key, required this.isPassword, required this.title, this.icon, required this.textInputType}) : super(key: key);

  final bool isPassword;

  final String title;
  IconData? icon;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AuthCubit.get(context);
        return Container(
          alignment: Alignment(0.0.w, -0.03.h),
          width: 343.0.w,
          height: 50.0.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColor.white,
            boxShadow: [
              BoxShadow(
                color: AppColor.black.withOpacity(0.11.spMin),
                offset: Offset(0.w, 6.0.h),
                blurRadius: 12.0.r,
              ),
            ],
          ),
          child: SizedBox(
            width: 343.0.w,
            child: TextFormField(
              onTap: () {},
              cursorColor: AppColor.mainColor,
              obscureText: isPassword ? (cubit.changePassword) : false,
              keyboardType: textInputType,
              decoration: InputDecoration(
                suffixIcon: isPassword
                    ? (IconButton(
                        onPressed: ()
                        {
                          cubit.changeVisibilityPassword();
                        },
                        icon: cubit.changePassword ? Icon(
                          Icons.visibility_outlined,
                          size: 27.spMin,
                          color: AppColor.mainColor,
                        ) : Icon(
                          Icons.visibility_off_outlined,
                          size: 27.spMin,
                          color: AppColor.mainColor,
                        ),
                      ))
                    : Icon(
                        icon,
                        size: 27.spMin,
                        color: AppColor.mainColor,
                      ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
                label: Text(
                  title,
                  style: GoogleFonts.tajawal(
                    fontSize: 14.0.spMin,
                    color: AppColor.black2,
                    letterSpacing: -0.5000000152587891.spMin,
                    height: 1.36.h,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
