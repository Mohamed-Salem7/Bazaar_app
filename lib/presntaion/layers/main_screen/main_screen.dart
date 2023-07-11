import 'package:bazaar/controller/main/cubit.dart';
import 'package:bazaar/controller/main/state.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            body: cubit.screen[cubit.currentIndex],
            bottomNavigationBar: SalomonBottomBar(
              currentIndex: cubit.currentIndex,
              selectedColorOpacity: 0.6.spMin,
              onTap: (i) {
                cubit.changeScreenSelect(i);
              },
              items: [
                SalomonBottomBarItem(
                  icon: cubit.currentIndex == 0
                      ? Image(
                          image: const AssetImage(AppImage.homeSelImg),
                          height: 15.h,
                          width: 18.w,
                        )
                      : Image(
                          image: const AssetImage(AppImage.homeUnSelImg),
                          height: 15.h,
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
                          height: 15.h,
                          width: 18.w,
                        )
                      : Image(
                          image: const AssetImage(AppImage.checkoutUnSelImg),
                          height: 15.h,
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
                    height: 15.h,
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
                          height: 15.h,
                          width: 18.w,
                        )
                      : Image(
                          image: const AssetImage(AppImage.favoriteUnSelImg),
                          height: 15.h,
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
