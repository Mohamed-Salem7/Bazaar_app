import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPhotoVideo extends StatelessWidget {
  const AddPhotoVideo({Key? key, required this.title, required this.text, required this.image, required this.function, required this.isFirst}) : super(key: key);

  final String title;
  final String text;
  final String image;
  final Function() function;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.only(right: 15.w, left: 15.w, top: isFirst ? 20.h : 0.h,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 14.spMin,
                color: AppColor.black2,
                letterSpacing: -0.33764706039428716.spMin,
                height: 1.57.h,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(12.r),
            onTap: function,
            child: DottedBorder(
              color: const Color(0xff8A8A8A).withOpacity(0.35.spMin),
              radius: Radius.circular(12.r),
              strokeCap: StrokeCap.butt,
              borderType: BorderType.RRect,
              child: Container(
                width: 327.w,
                height: 82.27.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12.r,
                  ),
                  color: AppColor.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(image),
                      width: 24.w,
                      height: 21.h,
                    ),
                    Text(
                      text,
                      style: GoogleFonts.roboto(
                        fontSize: 12.spMin,
                        color: const Color(0xFF8A8A8A),
                        letterSpacing: -0.2894117660522461.spMin,
                        height: 1.83.h,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
