import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/presntaion/layers/discover/widget/Button_Login.dart';
import 'package:bazaar/presntaion/layers/discover/widget/Button_Register.dart';
import 'package:bazaar/presntaion/layers/discover/widget/Later_Register.dart';
import 'package:bazaar/presntaion/layers/discover/widget/Text_Discover.dart';
import 'package:bazaar/presntaion/layers/discover/widget/logo_bazaar.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: AppColor.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: const Column(
          children: [
            LogoBazaar(),
            TextDiscover(),
            ButtonLogin(),
            ButtonRegister(),
            LaterRegister(),
          ],
        ),
      ),
    );
  }
}
