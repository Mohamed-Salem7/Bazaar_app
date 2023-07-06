import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ElementSetting extends StatelessWidget {
  const ElementSetting(
      {Key? key,
      required this.title,
      required this.icon,
      required this.function})
      : super(key: key);

  final String title;
  final String icon;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: function,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: Row(
              children: [
                Image(
                  image: AssetImage(icon),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  title,
                  style: GoogleFonts.tajawal(
                    fontSize: 16.sp,
                    color: AppColor.black,
                    letterSpacing: -0.5714285888671875.spMin,
                    height: 1.19.h,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff969696),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: const Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
