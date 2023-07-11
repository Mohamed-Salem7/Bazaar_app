import 'package:bazaar/presntaion/layers/Setting/Setting_Screen.dart';
import 'package:bazaar/presntaion/layers/home_screen/widget/carousel_slider.dart';
import 'package:bazaar/presntaion/layers/home_screen/widget/grid_view_home.dart';
import 'package:bazaar/presntaion/layers/home_screen/widget/list_view_home.dart';
import 'package:bazaar/presntaion/layers/home_screen/widget/text_home_widget.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/component.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
            ),
            toolbarHeight: 100.h,
            leading: GestureDetector(
              onTap: () {
                Get.to(
                  const SettingScreen(),
                  transition: transition[0],
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Colors.amber,
                ),
              ),
            ),
            title: Image.asset(AppImage.logo2Img, width: 130.w),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: <Widget>[
                      Icon(Icons.notifications_outlined,
                          color: AppColor.black, size: 30.spMin),
                      Container(
                        width: 6.0,
                        height: 6.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFFFF0008),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                CarouselWithIndicatorDemo(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextHomeWidget("تسوق حسب الفئة"),
                      ListViewHome(childListViewHomeScreen(), 300, 80),
                      TextHomeWidget("منتجات مميزة"),
                      GridViewHome(),
                      TextHomeWidget("أشهر المتاجر"),
                      ListViewHome(secondChildListViewHomeScreen(), 300, 80),
                      TextHomeWidget("أفضل العروض"),
                      ListViewHome(
                          Container(
                            alignment: Alignment(0.0, 0.09),
                            width: 165.0,
                            height: 210.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: AppColor.white,
                              boxShadow: [
                                BoxShadow(
                                  color: AppColor.black.withOpacity(0.05),
                                  offset: Offset(0, 6.0),
                                  blurRadius: 12.0,
                                ),
                              ],
                            ),
                            child: SizedBox(
                              width: 153.0.w,
                              height: 210.0.h,
                              child: Column(
                                children: <Widget>[
                                  Spacer(),
                                  Stack(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: 153.0,
                                        height: 153.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          color: Colors.grey[200],
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 153.0,
                                          height: 153.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            image: DecorationImage(
                                              image:
                                                  AssetImage(AppImage.homegird),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      PositionedDirectional(
                                          end: 10.w,
                                          top: 10.h,
                                          child: GestureDetector(
                                              child:
                                                  Image.asset(AppImage.heart)))
                                    ],
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 145.0,
                                    height: 42.0,
                                    child: Row(
                                      children: <Widget>[
                                        SingleChildScrollView(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          child: Column(
                                            children: [
                                              Text(
                                                'الاسم',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 16.0,
                                                  color: AppColor.black,
                                                  letterSpacing:
                                                      -0.5714285888671875,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.19,
                                                ),
                                              ),
                                              Text(
                                                '24.12\$',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 12.0,
                                                  color: Colors.amber,
                                                  letterSpacing:
                                                      -0.2894117660522461,
                                                  height: 1.83,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '4.9',
                                          style: GoogleFonts.roboto(
                                            fontSize: 10.0,
                                            color: AppColor.black,
                                            letterSpacing: -0.3571428680419922,
                                            height: 1.9,
                                          ),
                                        ),
                                        Image.asset(AppImage.iconlyLightStar),
                                      ],
                                    ),
                                  ),
                                  Spacer()
                                ],
                              ),
                            ),
                          ),
                          300,
                          200),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(child: Image.asset(item, fit: BoxFit.contain)))
    .toList();

final List<String> imgList = [
  AppImage.slider,
  AppImage.slider,
  AppImage.slider,
  AppImage.slider,
  AppImage.slider,
];
