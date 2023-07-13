import 'package:bazaar/presntaion/layers/details_store/widget/brief_text.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BriefBody extends StatelessWidget {
  const BriefBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.h,
              right: 20.w,
              left: 20.w,
            ),
            child: Container(
              width: 311.0,
              height: 191.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: AssetImage(AppImage.briefImg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
              width: 355.w,
              height: 197.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Positioned(
                    right: 0.w,
                    child: Container(
                      width: 330.w,
                      height: 197.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Colors.grey[100],
                      ),
                    ),
                  ),
                  BriefText(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
