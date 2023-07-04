import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/layers/on_boarding/widget/Next_Button.dart';
import 'package:bazaar/presntaion/layers/on_boarding/widget/Skip_Button.dart';
import 'package:bazaar/presntaion/layers/on_boarding/widget/page_view_child.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key,}) : super(key: key);


  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {

  @override
  void initState() {
    super.initState();
    AuthCubit.get(context).changePageController();

  }

  @override
  void dispose() {
    AuthCubit.get(context).pageController.dispose();
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
                    controller: AuthCubit.get(context).pageController,
                    onPageChanged: (int pageNumber) {
                      AuthCubit.get(context).changePageNumber(pageNumber);
                      print(AuthCubit.get(context).pageController.page);
                    },
                    children: [
                      PageViewChild(
                        img: AppImage.onBoarding1,
                        text: "العنوان",
                        secondText: " 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, \n sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \n sed diam voluptua. At vero eos et accusam et justo duo dolores'",
                      ),
                      PageViewChild(
                        img: AppImage.onBoarding2,
                        text: "العنوان",
                        secondText: " 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, \n sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \n sed diam voluptua. At vero eos et accusam et justo duo dolores'",
                      ),
                      PageViewChild(
                        img: AppImage.onBoarding3,
                        text: "العنوان",
                        secondText: " 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, \n sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \n sed diam voluptua. At vero eos et accusam et justo duo dolores'",
                      ),

                    ],
                  ),
                ),
                const NextButton(),
                const SkipButton(),
              ],
            ),
          ),
        );
      } ,
      listener: (context,state){},

    );
  }
}