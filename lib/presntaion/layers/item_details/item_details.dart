import 'package:bazaar/presntaion/layers/home_screen/widget/item_grid.dart';
import 'package:bazaar/presntaion/layers/item_details/widget/smallitemdetalis.dart';
import 'package:bazaar/presntaion/layers/item_details/widget/tab_bar_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/App_Color.dart';
import '../../utils/App_Image.dart';
import '../../utils/Global widget/constant.dart';
import '../home_screen/widget/text_home_widget.dart';
import 'widget/Text_details_widget.dart';

class ItemDetails extends StatelessWidget {
  List<String> tabOrder=[
    'المراجعات',
    'تفاصيل',
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          backgroundColor: AppColor.backItem,
          elevation: 0,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
          toolbarHeight: 50.h,
          title: Text(
            'تفاصيل المنتج',
            style: GoogleFonts.roboto(
              fontSize: 16.0,
              color: AppColor.black,
              letterSpacing: -0.5714285888671875,
              height: 1.19,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 530.h,
                child: Stack(
                  children: [
                    Container(
                      height: 345.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColor.backItem,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(150.r))),
                    ),
                    PositionedDirectional(
                      bottom: -120.h,
                      child: Container(
                        width: 500.w,
                        height: 320.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.r)),
                          color: AppColor.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 100.h),
                          child: Column(
                            children: [
                              Align(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: TextDetailsWidget(
                                      "صندوق خشبي\n  مع تطريز")),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100.w,
                                    height: 20,
                                    child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) => Icon(
                                            Icons.star,
                                            color: AppColor.starColor,
                                            size: 20.spMin),
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                            width: 1.w,
                                          );
                                        },
                                        itemCount: 5),
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  Text(
                                    '4.9',
                                    style: GoogleFonts.roboto(
                                      fontSize: 16.0,
                                      color: AppColor.black,
                                      letterSpacing: -0.5714285888671875,
                                      height: 1.19,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    PositionedDirectional(
                        top: 150.h,
                        child: Image.asset(AppImage.bigItemDetails)),
                    SmallItemDetails(80, AppImage.smallItemDetails),
                    SmallItemDetails(140, AppImage.smallItemDetails),
                    SmallItemDetails(200, AppImage.smallItemDetails),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    TextDetailsWidget("24.2\$"),
                    Spacer(),
                    Stack(
                      children: [
                        Container(
                          width: 100.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: AppColor.mainColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.r))),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: AppColor.white,
                            )),
                        PositionedDirectional(
                            end: 43.w,
                            top: 12.h,
                            child: Text(
                              "1",
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontWeight: FontWeight.bold),
                            )),
                        PositionedDirectional(
                            end: 0.w,
                            bottom: 6.h,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.minimize,
                                  color: AppColor.white,
                                ))),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextDetailsWidget("المقاس:"),
                        SizedBox(
                          width: 10.w,
                        ),
                        SizedBox(
                          width: 270.w,
                          height: 40.h,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 15.h,
                                  width: 40.w,
                                  child: Center(
                                      child: Text(
                                    'S',
                                    style: GoogleFonts.roboto(
                                      fontSize: 20.0,
                                      color: AppColor.white,
                                      letterSpacing: -0.7142857360839844,
                                      height: 0.95,
                                    ),
                                    textAlign: TextAlign.center,
                                  )),
                                  decoration: BoxDecoration(
                                      color: AppColor.mainColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.r))),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: 15.w,
                                );
                              },
                              itemCount: 5),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextDetailsWidget("اللون:"),
                        Expanded(
                            child: SizedBox(
                          width: 60.w,
                        )),
                        SizedBox(
                          width: 270.w,
                          height: 30.h,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 15.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      color: AppColor.mainColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.r))),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: 15.w,
                                );
                              },
                              itemCount: 5),
                        ),
                      ],
                    ),
                    Container(
                      height: 120.h,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60.r)),
                              child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage(AppImage.homegird),
                                  backgroundColor: AppColor.white,
                                  radius: 40.r)),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 25.h),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 130.w,top: 12.h),
                                  child: Container(
                                    height: 20.h,
                                      child: TextDetailsWidget("متجر المنى")),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 22.5.h,
                                      width: 20.w,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  AppImage.homegird))),
                                    ),
                                    Text(
                                      "ملابس",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 120.w,
                                    ),
                                    Container(
                                      height: 10.h,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.message_outlined)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    height: 130.h,
                    width: double.infinity,
                    child: DefaultTabController(
                      length: numberTap=tabOrder.length,
                      child: Scaffold(
                        body: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Column(
                            children: [
                              TabBarDetails(tabOrder[0],tabOrder[1],),
                              SizedBox(height: 10.h,),
                              Expanded(
                                child: TabBarView(
                                  children: [
                                  SizedBox(
                                  width: 335.0,
                                  height: 70.0,
                                  child: Text(
                                    'صندوق خشبي قشرة زان مع تطريز على قماش قطني ، حواف خشبية مزخرفة مع يد معدنية في المنتصف يستخدم للضيافة أو للأغراض الشخصية. مقاس : 22*22 سم',
                                    style: GoogleFonts.roboto(
                                      fontSize: 14.0,
                                      color: AppColor.black,
                                      letterSpacing: -0.33764706039428716,
                                      height: 1.57,
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                  SizedBox(
                                  width: 335.0,
                                  height: 70.0,
                                  child: Text(
                                    'صندوق خشبي قشرة زان مع تطريز على قماش قطني ، حواف خشبية مزخرفة مع يد معدنية في المنتصف يستخدم للضيافة أو للأغراض الشخصية. مقاس : 22*22 سم',
                                    style: GoogleFonts.roboto(
                                      fontSize: 14.0,
                                      color: AppColor.black,
                                      letterSpacing: -0.33764706039428716,
                                      height: 1.57,
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: TextHomeWidget("قد يعجبك أيضاً"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ItemGrid(),
                  ItemGrid(),
                ],
              ),
              SizedBox(height: 25.h,)
            ],
          ),
        ),
      ),
    );
  }
}
