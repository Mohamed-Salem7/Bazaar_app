import 'package:bazaar/presntaion/layers/notification/widget/Notification.dart';
import 'package:bazaar/presntaion/layers/notification/widget/exclusive_notification.dart';
import 'package:bazaar/presntaion/layers/notification/widget/notice_text.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleWidget(
              title: 'التنبيهات',
              isEditProfile: false,
              context: context,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.h),
                      child: Text(
                        'اليوم',
                        style: GoogleFonts.roboto(
                          fontSize: 18.0,
                          color: AppColor.mainColor,
                          letterSpacing: -0.6428571624755859,
                          fontWeight: FontWeight.w700,
                          height: 1.06,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                        itemBuilder: (context, index)
                        {
                          return const NotificationBody();
                        },
                        separatorBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Divider(height: 10.h, thickness: 0.5.spMin),
                          );
                        },
                        itemCount: 5,
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
