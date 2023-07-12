import 'package:bazaar/presntaion/layers/store/widget/avatar_widget.dart';
import 'package:bazaar/presntaion/layers/store/widget/favorite_widget.dart';
import 'package:bazaar/presntaion/layers/store/widget/rate_store.dart';
import 'package:bazaar/presntaion/layers/store/widget/shadow_screen.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyStore extends StatelessWidget {
  const BodyStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(bottom : 10.h),
      child: SizedBox(
        width: 325.w,
        height: 185.h,
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 325.w,
              height: 184.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                image: const DecorationImage(
                  image: AssetImage(AppImage.storesImg),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                width: 325.w,
                height: 184.h,
                child: const Stack(
                  children: <Widget>[
                    ShadowScreen(),
                    FavoriteWidget(),
                  ],
                ),
              ),
            ),
            const RateStore(),
            const AvatarWidget(),
          ],
        ),
      ),
    );
  }
}
