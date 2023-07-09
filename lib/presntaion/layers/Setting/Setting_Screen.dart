import 'package:bazaar/presntaion/layers/Setting/screen/Edit_Profile/edit_profile.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/order/order_screen.dart';
import 'package:bazaar/presntaion/layers/Setting/widget/app_bar_setting.dart';
import 'package:bazaar/presntaion/layers/Setting/widget/element_setting.dart';
import 'package:bazaar/presntaion/layers/Setting/widget/logout_button.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> iconElement = [
      AppImage.editImg,
      AppImage.orderImg,
      AppImage.addressImg,
      AppImage.bloggerImg,
      AppImage.paymentImg,
      AppImage.helpImg,
    ];

    List<String> titleElement = [
      'تعديل الملف الشخصي',
      'الطلبات',
      'عناوين الشحن',
      'المدونة',
      'طرق الدفعة',
      'تواصل معنا',
    ];

    List<Function()> function = [
      () {
        Get.to(const EditProfileScreen(), transition: Transition.rightToLeft);
      },
      ()
      {
        Get.to(const OrderScreen(), transition: Transition.rightToLeft);
      },
      () {},
      () {},
      () {},
      () {},
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            const AppBarSetting(),
            SizedBox(
              height: 425.h,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: iconElement.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ElementSetting(
                    title: titleElement[index],
                    icon: iconElement[index],
                    function: function[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            const LogoutButton(),
          ],
        ),
      ),
    );
  }
}
