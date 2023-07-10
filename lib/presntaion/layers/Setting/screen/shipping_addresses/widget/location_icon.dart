import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationIcon extends StatelessWidget {
  const LocationIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 8.w, vertical: 18.h),
      child: Column(
        children: [
          CircleAvatar(

            backgroundColor: const Color(0xfff3f3f3),
            radius: 38.r,
            child: const Center(
              child: Image(
                image: AssetImage(
                  AppImage.shippingAddressImg,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
