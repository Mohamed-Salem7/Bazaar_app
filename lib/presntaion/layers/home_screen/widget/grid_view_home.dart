import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/App_Color.dart';
import '../../../utils/App_Image.dart';

class GridViewHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 525.h,
      child: GridView.builder(
        physics: ScrollPhysics(),
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7.h,
              crossAxisSpacing: 5.w,
              mainAxisSpacing: 15.h),
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return Container(
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
                                image: AssetImage(
                                    AppImage.homegird),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        PositionedDirectional(
                            end: 10.w,
                            top: 10.h,
                            child:
                            GestureDetector(child: Image.asset(AppImage.heart)))
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
                                    fontWeight:
                                    FontWeight.w700,
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
                              letterSpacing:
                              -0.3571428680419922,
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
            );
          }),
    );
  }
}
