import 'package:bazaar/presntaion/layers/Setting/screen/order/widget/time_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/Brief_Store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/Name_rate_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/Number_Revision_Store.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyRevision extends StatelessWidget {
  const BodyRevision({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 10.h,
          right: 20.w,
          left: 20.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (index == 0) const NumberRevisionStore(),
            Padding(
              padding: index == 0 ? EdgeInsets.only(top: 10.h) : EdgeInsets.only(top: 0.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 55.w,
                        height: 55.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(AppImage.avatarImg),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Expanded(
                    child: Column(
                      children: [
                        NameRateStore(),
                        BriefStore(),
                        TimeStore(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
