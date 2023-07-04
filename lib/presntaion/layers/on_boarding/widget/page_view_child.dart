import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'indcator.dart';

class PageViewChild extends StatelessWidget {
  final String img, text, secondText;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  PageViewChild({
    required this.img,
    required this.text,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset(
                    width: double.infinity,
                    img,
                  ),
                ),
                BlocConsumer<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Indicator(
                            margin: 13.w,
                            selected: AuthCubit.get(context).pageNumber == 2,
                          ),
                          Indicator(
                            margin: 13.w,
                            selected: AuthCubit.get(context).pageNumber == 1,
                          ),
                          Indicator(
                            margin: 13.w,
                            selected: AuthCubit.get(context).pageNumber == 0,
                          ),
                        ],
                      );
                    },
                    listener: (context, state) {}),
                Padding(

                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      Text(
                        text,
                        style: GoogleFonts.roboto(
                          fontSize: 22.0.spMin,
                          color: Colors.black,
                          letterSpacing: 0.2652941398620605.spMin,
                          fontWeight: FontWeight.w700,
                          height: 1.55.h,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    secondText,
                    style: GoogleFonts.roboto(
                      fontSize: 14.0.spMin,
                      color: Colors.black,
                      letterSpacing: 0.16882354354858398.spMin,
                      height: 1.43.h,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}