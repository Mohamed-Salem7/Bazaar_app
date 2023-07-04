import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundBottomImage extends StatelessWidget {
  const BackgroundBottomImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40.h,
          width: double.infinity,
          child: const Image(
            image: AssetImage(
              AppImage.background2Img,
            ),
            fit: BoxFit.fill,
          ),
        ),
        const Expanded(
          child: Image(
            image: AssetImage(
              AppImage.backgroundImg,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

}
