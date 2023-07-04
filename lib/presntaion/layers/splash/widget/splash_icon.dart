import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SplashIcon extends StatelessWidget {
  const SplashIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image(
        image: const AssetImage(
          AppImage.splashLightImg,
        ),
        width: 360.w,
        height: 780.h,
        fit: BoxFit.fill,
      ),
    );
  }
}