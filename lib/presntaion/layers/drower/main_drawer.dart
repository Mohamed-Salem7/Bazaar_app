import 'package:bazaar/presntaion/layers/Setting/Setting_Screen.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/Edit_Profile/edit_profile.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/contact_us/contact_us_screen.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/order/order_screen.dart';
import 'package:bazaar/presntaion/layers/drower/widget/box_name_widget.dart';
import 'package:bazaar/presntaion/layers/drower/widget/box_num_widget.dart';
import 'package:bazaar/presntaion/layers/drower/widget/list_tile_drawer.dart';
import 'package:bazaar/presntaion/layers/wallet/wallet_screen.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/App_Color.dart';

class DrawerSeller extends StatelessWidget {
  const DrawerSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.spMin,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 80.w, left: 80.w),
            child: UserAccountsDrawerHeader(
              accountName: Text(
                'مشغل إبرة',
                style: GoogleFonts.roboto(
                  fontSize: 20.0,
                  color: AppColor.black,
                  letterSpacing: -0.7142857360839844,
                  fontWeight: FontWeight.w500,
                  height: 0.95,
                ),
              ),
              accountEmail: Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Text(
                  'متجر',
                  style: GoogleFonts.roboto(
                    fontSize: 12.0,
                    color: const Color(0xFF8E8E8E),
                    letterSpacing: -0.2894117660522461,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              currentAccountPicture: const CircleAvatar(
                  foregroundImage: AssetImage(AppImage.customerImg)),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Container(
              height: 90.h,
              decoration: BoxDecoration(
                  color: AppColor.white,
                  boxShadow: [
                    BoxShadow(color: AppColor.black.withOpacity(0.35))
                  ],
                  borderRadius: BorderRadius.circular(20.r)),
              child: Padding(
                padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
                child: Row(
                  children: [
                    Column(
                      children: [
                        BoxNameWidget("المنتجات في \n المخزن"),
                        BoxNumWidget("246"),
                      ],
                    ),
                    const Spacer(
                      flex: 10,
                    ),
                    Column(
                      children: [
                        BoxNameWidget("قيد التوصيل"),
                        BoxNumWidget("246"),
                      ],
                    ),
                    const Spacer(
                      flex: 10,
                    ),
                    Column(
                      children: [
                        BoxNameWidget("طلبات مكتملة"),
                        BoxNumWidget("246"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          ListTileDrawer(
            "تعديل الملف الشخصي",
            AppImage.drawer1,
            () {
              Get.to(
                const EditProfileScreen(),
                transition: transition[0],
              );
            },
          ),
          ListTileDrawer(
            "الطلبات",
            AppImage.drawer2,
            () {
              Get.to(
                const OrderScreen(),
                transition: transition[0],
              );
            },
          ),
          ListTileDrawer(
            "سحب الأرباح",
            AppImage.drawer3,
            () {

            },
          ),
          ListTileDrawer(
            "محفظة",
            AppImage.drawer4,
            () {
              Get.to(
                const WalletScreen(),
                transition: transition[0],
              );
            },
          ),
          ListTileDrawer(
            "تواصل معنا",
            AppImage.drawer6,
            () {
              Get.to(
                const ContactUsScreen(),
                transition: transition[0],
              );
            },
          ),
          ListTileDrawer(
            "الاعدادات",
            AppImage.drawer7,
            () {
              Get.to(
                const SettingScreen(),
                transition: transition[0],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage(AppImage.off))),
                ),
                SizedBox(width: 10.h),
                Text(
                  'تسجيل خروج',
                  style: GoogleFonts.roboto(
                    fontSize: 20.0,
                    color: AppColor.mainColor,
                    letterSpacing: -0.7142857360839844,
                    height: 0.95,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
