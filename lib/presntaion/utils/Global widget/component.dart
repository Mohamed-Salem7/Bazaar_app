
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../App_Image.dart';

void navigatorFinished(context, widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
      (route) {
    return false;
  },
);

Widget myText(String? text,
    {
      isBold = false,
      bool isAutoDirection = true,
      Color color = AppColor.black,
      FontWeight? fontWeight,
      double? fontSize ,
      double? iconSize ,
      int? maxLine ,
      String icon='' ,
      TextDecoration textDecoration = TextDecoration.none ,
      TextAlign textAlign = TextAlign.start}) =>
    Wrap(
      //  mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        if(icon.isNotEmpty)SizedBox(width: 10.w,),
        if(isAutoDirection)
          Text(
            text??'-',
            textAlign: textAlign,
            maxLines: maxLine,
            /*overflow: TextOverflow.ellipsis,*/
            style: TextStyle(
              decoration: textDecoration,
              fontSize:fontSize?? 16.sp,
              color: color,
              height: 1.3.h,
              fontWeight:fontWeight?? (isBold ? FontWeight.w700 : FontWeight.w400),
            ),
          )else
          Text(
            text??'-',
            textAlign: textAlign,

            /*overflow: TextOverflow.ellipsis,*/
            style: TextStyle(
              decoration: textDecoration,
              fontSize:fontSize?? 16.sp,
              color: color,
              fontWeight:fontWeight?? (isBold ? FontWeight.w700 : FontWeight.w400),
            ),
          ),

      ],
    );

Widget childListViewHomeScreen(){
  return Row(
    children: [
      SizedBox(
        width: 300.w,
        height: 80.h,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomLeft,
                  width: 100.w,
                  height: 83.92.h,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(22.r),
                    image: DecorationImage(
                      image: AssetImage(AppImage.homeList),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment(0.w, 0.51.h),
                    width: 100.w,
                    height: 35.56.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(22.r),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFF252E48)
                              .withOpacity(0.spMin),
                          AppColor.mainColor
                        ],
                      ),
                    ),
                    child: Text(
                      'ملابس',
                      style: GoogleFonts.roboto(
                        fontSize: 12.r,
                        color: AppColor.white,
                        letterSpacing: -0.4285714416503906.spMin,
                        fontWeight: FontWeight.w700,
                        height: 1.58.h,
                        shadows: [
                           Shadow(
                            color: AppColor.mainColor,
                            offset: Offset(0.w, 3.h),
                            blurRadius: 6.r,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
            ;
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 10.w,
          ),
          itemCount: 5,
        ),
      ),
    ],
  );
}


Widget secondChildListViewHomeScreen(){
  return Container(
    width: 65.0.w,
    height: 100.0.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(60.0.r),
      image: DecorationImage(
        image: AssetImage(AppImage.secondListView),
        fit: BoxFit.cover,
      ),
      boxShadow: [
        BoxShadow(
          color: AppColor.white.withOpacity(0.11.spMin),
          offset: Offset(0.w, 6.h),
          blurRadius: 12.r,
        ),
      ],
    ),
  );
}


