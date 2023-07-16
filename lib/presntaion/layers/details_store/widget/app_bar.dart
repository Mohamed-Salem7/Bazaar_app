import 'package:bazaar/presntaion/layers/Setting/screen/contact_us/widget/text_field_message.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/Info_Store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/avatar_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/background_image_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/background_shadow_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/chating_store.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Main_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarStore extends StatelessWidget {
  const AppBarStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.h,
      child: Stack(
        children: [
          const BackgroundImageStore(),
          const ShadowImageStore(),
          Positioned(
            right: 0.w,
            top: 50.h,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios,
                  size: 23.spMin, color: AppColor.white),
            ),
          ),
          Positioned(
            left: 10.w,
            top: 50.h,
            child: CircleAvatar(
              radius: 18.r,
              backgroundColor: AppColor.white,
              child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const ChattingStore();
                    },
                  );
                },
                icon: Image(
                  image: const AssetImage(AppImage.chatImg),
                  width: 20.w,
                  height: 20.h,
                ),
              ),
            ),
          ),
          const InfoStoreScreen(),
          const AvatarStoreScreen(),
        ],
      ),
    );
  }
}
