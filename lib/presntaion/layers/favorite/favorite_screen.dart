import 'package:bazaar/controller/main/cubit.dart';
import 'package:bazaar/controller/main/state.dart';
import 'package:bazaar/presntaion/layers/favorite/widget/background_widget.dart';
import 'package:bazaar/presntaion/layers/favorite/widget/image_product.dart';
import 'package:bazaar/presntaion/layers/favorite/widget/info_product.dart';
import 'package:bazaar/presntaion/layers/favorite/widget/product.dart';
import 'package:bazaar/presntaion/layers/favorite/widget/title_widget.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/app_bar.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../store/widget/body_store.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MainCubit.get(context);
          return Scaffold(
            backgroundColor: AppColor.white9,
            appBar: AppBarMain(title: 'المفضلة'),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            i = 0;
                            cubit.changeIndex(i);
                            print(cubit.index);
                          },
                          borderRadius: BorderRadius.circular(12.r),
                          child: Container(
                            width: 104.w,
                            height: 25.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: cubit.index == 0
                                  ? AppColor.mainColor
                                  : const Color(0xff767680)
                                      .withOpacity(0.05.spMin),
                              boxShadow: cubit.index == 0
                                  ? [
                                      BoxShadow(
                                        color: AppColor.mainColor
                                            .withOpacity(0.11.spMin),
                                        offset: Offset(0.w, 6.h),
                                        blurRadius: 12.r,
                                      ),
                                    ]
                                  : null,
                            ),
                            child: Text(
                              'المفضلة',
                              style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                color: cubit.index == 0
                                    ? AppColor.white
                                    : AppColor.mainColor,
                                letterSpacing: -0.5714285888671875.spMin,
                                fontWeight: FontWeight.w500,
                                height: 1.59.h,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        InkWell(
                          onTap: () {
                            i = 1;
                            cubit.changeIndex(i);
                          },
                          borderRadius: BorderRadius.circular(12.r),
                          child: Container(
                            width: 104.w,
                            height: 25.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: cubit.index == 1
                                  ? AppColor.mainColor
                                  : const Color(0xff767680)
                                      .withOpacity(0.05.spMin),
                              boxShadow: cubit.index == 1
                                  ? [
                                      BoxShadow(
                                        color: AppColor.black
                                            .withOpacity(0.11.spMin),
                                        offset: Offset(0.w, 6.h),
                                        blurRadius: 12.r,
                                      ),
                                    ]
                                  : null,
                            ),
                            child: Text(
                              'مفضلة التاجر',
                              style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                color: cubit.index == 1
                                    ? AppColor.white
                                    : AppColor.mainColor,
                                letterSpacing: -0.5714285888671875.spMin,
                                fontWeight: FontWeight.w500,
                                height: 1.35.h,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (cubit.index == 0)
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15.h,
                        physics: const BouncingScrollPhysics(),
                        crossAxisSpacing: 10.w,
                        childAspectRatio: 1 / 1.16.spMin,
                        cacheExtent: 0,
                        children: List.generate(10, (index) {
                          return const Product();
                        }),
                      ),
                    ),
                  if (cubit.index == 1)
                    Expanded(
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const BodyStore();
                          }),
                    ),
                ],
              ),
            ),
          );
        });
  }
}
