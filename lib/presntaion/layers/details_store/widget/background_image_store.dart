import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundImageStore extends StatelessWidget {
  const BackgroundImageStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 375.w,
      height: 266.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.storesImg),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
