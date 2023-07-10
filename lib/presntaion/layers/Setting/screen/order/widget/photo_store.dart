import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoStore extends StatelessWidget {
  const PhotoStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 5.w,
        ),
        Column(
          children: [
            SizedBox(
              height: 8.h,
            ),
            CircleAvatar(
              radius: 37.r,
            )
          ],
        ),
        SizedBox(
          width: 8.w,
        ),
      ],
    );
  }
}
