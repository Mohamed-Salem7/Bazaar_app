import 'package:bazaar/presntaion/layers/discover/discover_screen.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/component/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoChooseUser extends StatelessWidget {
  const LogoChooseUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment(1.w, 0.h),
          child: IconButton(
            onPressed: () {
              navigatorFinished(context, const DiscoverScreen());
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ),
        ),
        Center(
          child: Image(
            image: const AssetImage(
              AppImage.logo2Img,
            ),
            width: 160.w,
            height: 79.h,
          ),
        ),
        SizedBox(
          height: 60.h,
        ),
      ],
    );
  }
}
