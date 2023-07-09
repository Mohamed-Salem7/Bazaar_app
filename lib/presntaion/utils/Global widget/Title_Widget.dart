import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
    required this.isEditProfile,
  }) : super(key: key);

  final String title;
  final bool isEditProfile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.tajawal(
                  fontSize: 16.spMax,
                  color: AppColor.black,
                  letterSpacing: -0.5714285888671875.spMin,
                  height: 2.19.h,
                ),
                //textAlign: TextAlign.center,
              ),
            ),
          ),
          if (isEditProfile)
            TextButton(
              onPressed: () {},
              child: Text(
                'تم',
                style: GoogleFonts.roboto(
                  fontSize: 18.0,
                  color: AppColor.mainColor,
                  letterSpacing: -0.6428571624755859,
                  fontWeight: FontWeight.w500,
                  height: 1.06,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
