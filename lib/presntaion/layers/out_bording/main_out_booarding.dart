import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/layers/out_bording/widget/page_view_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/App_Color.dart';


class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit,AuthState>(
      builder:(context,state) {
        SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
          ),
        );
        return Scaffold(
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    onPageChanged: (int pageNumber) {
                      AuthCubit.get(context).changePageNumber(pageNumber);
                    },
                    children: [
                      PageViewChild(
                        img: 'assets/images/onboarding1.png',
                        text: "العنوان",
                        secondText: " 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, \n sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \n sed diam voluptua. At vero eos et accusam et justo duo dolores'",
                      ),
                      PageViewChild(
                        img: 'assets/images/onboarding2.png',
                        text: "العنوان",
                        secondText: " 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, \n sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \n sed diam voluptua. At vero eos et accusam et justo duo dolores'",
                      ),
                      PageViewChild(
                        img: 'assets/images/onboarding3.png',
                        text: "العنوان",
                        secondText: " 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, \n sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \n sed diam voluptua. At vero eos et accusam et justo duo dolores'",
                      ),

                    ],
                  ),
                ),

          Container(
              alignment: Alignment(0.0.w, 0.03.h),
              width: 306.0.w,
              height: 50.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0.r),
                color: AppColor.mainColor,
              ),
              child: Text(
                  'التالي',
                  style: GoogleFonts.roboto(
                    fontSize: 14.0.spMin,
                    color: AppColor.white,
                    letterSpacing: -0.5000000152587891.spMin,
                    height: 1.36.h,
                  ),
                  textAlign: TextAlign.center,
                  ),
              ),
                SizedBox(
                  height: 70.h,
                ),
          Text(
              'تخطي',
              style: GoogleFonts.roboto(
                fontSize: 16.0,
                color: const Color(0xFFA6A6A6),
                letterSpacing: -0.5714285888671875,
                height: 1.19,
              ),
              textAlign: TextAlign.center,
              ),
                SizedBox(
                  height: 35.h,
                ),
              ],
            ),
          ),
        );
      } ,
      listener: (context,state){},

    );
  }
}
