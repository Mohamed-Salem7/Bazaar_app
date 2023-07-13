import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressStore extends StatelessWidget {
  const AddressStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
            image: const AssetImage(
              AppImage.shippingAddressImg,
            ),
            height: 14.h,
            width: 12.w),
        SizedBox(
          width: 5.w,
        ),
        Text(
          'فلسطين - غزة',
          style: GoogleFonts.tajawal(
            fontSize: 16.spMin,
            color: AppColor.black2,
            letterSpacing: -0.384.spMin,
            height: 1.38.h,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
