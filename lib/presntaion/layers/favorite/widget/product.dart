import 'package:bazaar/presntaion/layers/favorite/widget/background_widget.dart';
import 'package:bazaar/presntaion/layers/favorite/widget/image_product.dart';
import 'package:bazaar/presntaion/layers/favorite/widget/info_product.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.w, 0.33.h),
      width: 150.w,
      height: 195.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withOpacity(0.10.spMin),
            offset: Offset(0.w, 3.h),
            blurRadius: 6.r,
          ),
        ],
      ),
      child: SizedBox(
        width: 159.w,
        height: 185.h,
        child: const Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            BackgroundWidget(),
            ImageProduct(),
            InfoProduct(),
          ],
        ),
      ),
    );
  }
}
