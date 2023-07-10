import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_screen/widget/grid_view_home.dart';


class TabBarHomeScreen extends StatefulWidget {
  TabBarHomeScreen({Key? key}) : super(key: key);

  @override
  _TabBarHomeScreenState createState() => _TabBarHomeScreenState();
}

class _TabBarHomeScreenState extends State<TabBarHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            SafeArea(
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(
                      onTap: (value){
                        value==1? AuthCubit.get(context).changeColor():AuthCubit.get(context).colors;
                      },
                      unselectedBackgroundColor: Colors.grey[150],
                      unselectedLabelStyle: TextStyle(color: AuthCubit.get(context).colors),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.mainColor,
                      ),
                      labelStyle:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      tabs: [
                        Tab(
                          icon: Image.asset(AppImage.clothes),
                          text: "ملابس",
                        ),
                        Tab(
                          icon: Image.asset(AppImage.handing),
                          text: "مطرزات",
                        ),
                        Tab(
                          icon: Image.asset(AppImage.ekssuar),
                          text: "اكسسوارات",
                        ),
                        Tab(
                          icon: Image.asset(AppImage.hanging),
                          text: "معلقات",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 710.h,
                      child: TabBarView(
                        children: <Widget>[
                          Column(
                            children: [
                              Container(
                                width: 343.0.w,
                                height: 180.0.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  image: DecorationImage(image: AssetImage(AppImage.showtab),fit: BoxFit.fill),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColor.white,
                                      offset: Offset(0, 6.0),
                                      blurRadius: 12.0,
                                    ),
                                  ],
                                ),
                              ),
                              GridViewHome(),
                            ],
                          ),
                          Center(
                            child: Icon(Icons.directions_transit),
                          ),
                          Center(
                            child: Icon(Icons.directions_bike),
                          ),
                          Center(
                            child: Icon(Icons.directions_car),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> imageListSow=[

];