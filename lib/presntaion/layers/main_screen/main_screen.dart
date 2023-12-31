import 'package:bazaar/controller/main/cubit.dart';
import 'package:bazaar/controller/main/state.dart';
import 'package:bazaar/presntaion/layers/drower/main_drawer.dart';
import 'package:bazaar/presntaion/layers/new_product/new_product_screen.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      builder: (context, state) {
        var cubit = MainCubit.get(context);
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            key: scaffoldKey,
            extendBody: true,
            backgroundColor: AppColor.white9,
            drawer: const DrawerSeller(),
            body: false ? cubit.screen[cubit.currentIndex] : cubit.screenSeller[cubit.currentIndex],
            floatingActionButton:  true ? Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
              child: FloatingActionButton(
                child: Icon(Icons.add,size: 35.sp,),
                hoverElevation: 10,
                isExtended: true,
                splashColor: AppColor.white9,
                backgroundColor: AppColor.mainColor,
                onPressed: ()
                {
                  Get.to(const NewProductScreen(),transition: transition[0],);
                },
              ),
            ) : null,
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: true ? BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 0.1,
              clipBehavior: Clip.antiAlias,
              child: Container(
                width: 375.w,
                height: 70.h,
                color: AppColor.white9,
                child: BottomNavigationBar(
                  selectedLabelStyle:  GoogleFonts.roboto(
                    fontSize: 14.sp,
                    letterSpacing: -0.5000000152587891.spMin,
                    fontWeight: FontWeight.w500,
                    color: AppColor.mainColor,
                    height: 1.36.h,
                  ),
                  items: [
                    BottomNavigationBarItem(
                      icon: cubit.currentIndex == 0
                          ? Image(
                        image: const AssetImage(AppImage.homeUnSelImg),
                        height: 20.h,
                        width: 18.w,
                      )
                          : Image(
                        image: const AssetImage(AppImage.homeSelImg),
                        height: 20.h,
                        width: 18.w,
                      ),
                      label:  "الرئيسية",

                    ),
                    BottomNavigationBarItem(
                      icon: cubit.currentIndex == 1
                          ? Image(
                        image: const AssetImage(AppImage.notificationsImg),
                        height: 20.h,
                        width: 18.w,
                      )
                          : Image(
                        image: const AssetImage(AppImage.notificationunImg),
                        height: 20.h,
                        width: 18.w,
                      ),
                      label:  "التنبيهات" ,
                    ),
                  ],
                  useLegacyColorScheme: false,
                  showUnselectedLabels: false,
                  currentIndex: cubit.currentIndex,
                  onTap: (index) {
                    cubit.changeScreenSelect(index);
                  },
                ),
              ),


            ) : SalomonBottomBar(
              currentIndex: cubit.currentIndex,
              selectedColorOpacity: 0.6.spMin,
              onTap: (i) {
                cubit.changeScreenSelect(i);
              },
              items: [
                SalomonBottomBarItem(
                  icon: cubit.currentIndex == 0
                      ? Image(
                          image: const AssetImage(AppImage.homeUnSelImg),
                          height: 20.h,
                          width: 18.w,
                        )
                      : Image(
                          image: const AssetImage(AppImage.homeSelImg),
                          height: 20.h,
                          width: 18.w,
                        ),
                  title: Text(
                    "الرئيسية",
                    style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      letterSpacing: -0.5000000152587891.spMin,
                      fontWeight: FontWeight.w500,
                      height: 1.36.h,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  selectedColor: AppColor.mainColor,
                  unselectedColor: AppColor.mainColor,
                ),
                SalomonBottomBarItem(
                  icon: cubit.currentIndex == 1
                      ? Image(
                          image: const AssetImage(AppImage.checkoutSelImg),
                          height: 20.h,
                          width: 18.w,
                        )
                      : Image(
                          image: const AssetImage(AppImage.checkoutUnSelImg),
                          height: 20.h,
                          width: 18.w,
                        ),
                  title: Text(
                    'السلة',
                    style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      letterSpacing: -0.5000000152587891.spMin,
                      fontWeight: FontWeight.w500,
                      height: 1.36.h,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  selectedColor: AppColor.mainColor,
                  unselectedColor: AppColor.mainColor,
                ),
                SalomonBottomBarItem(
                  icon: Image(
                    image: const AssetImage(AppImage.storeImg),
                    height: 20.h,
                    width: 18.w,
                  ),
                  title: Text(
                    "متاجر",
                    style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      letterSpacing: -0.5000000152587891.spMin,
                      fontWeight: FontWeight.w500,
                      height: 1.36.h,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  selectedColor: AppColor.mainColor,
                  unselectedColor: AppColor.mainColor,
                ),
                SalomonBottomBarItem(
                  icon: cubit.currentIndex == 3
                      ? Image(
                          image: const AssetImage(AppImage.favoriteSelImg),
                          height: 20.h,
                          width: 18.w,
                        )
                      : Image(
                          image: const AssetImage(AppImage.favoriteUnSelImg),
                          height: 20.h,
                          width: 18.w,
                        ),
                  title: Text(
                    "المفضلة",
                    style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      letterSpacing: -0.5000000152587891.spMin,
                      fontWeight: FontWeight.w500,
                      height: 1.36.h,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  selectedColor: AppColor.mainColor,
                  unselectedColor: AppColor.mainColor,
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
