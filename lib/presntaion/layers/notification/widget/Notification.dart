import 'package:bazaar/presntaion/layers/notification/widget/exclusive_notification.dart';
import 'package:bazaar/presntaion/layers/notification/widget/notice_text.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundImage: AssetImage(
              AppImage.avatarImg,
            ),
          ),
          const NoticeText(),
          const ExclusiveNotification(),
        ],
      ),
    );
  }
}
