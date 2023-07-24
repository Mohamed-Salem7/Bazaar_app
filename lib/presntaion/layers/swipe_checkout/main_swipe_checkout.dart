import 'package:bazaar/presntaion/layers/swipe_checkout/widget/text_checkout_widget.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MainSwipeCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: TitleWidget(
              title: "السلة", isEditProfile: false, context: context),
          body: Column(
            children: [
              Container(
                height: 400.h,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Dismissible(
                        confirmDismiss: (DismissDirection direction) async {
                          return await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Directionality(
                                textDirection: TextDirection.rtl,
                                child: AlertDialog(
                                  title: const Text("تأكيد الحذف",style: TextStyle(fontWeight: FontWeight.bold),),
                                  content: const Text("هل انت متأكد من حذف العنصر"),
                                  actions: <Widget>[
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: AppColor.mainColor,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10.r)
                                            )
                                        ),
                                        onPressed: () => Navigator.of(context).pop(true),
                                        child: const Text("حذف")
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColor.mainColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.r)
                                          )
                                      ),
                                      onPressed: () => Navigator.of(context).pop(false),
                                      child: const Text("الغاء"),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        background: Padding(
                          padding:  EdgeInsets.only(right: 250.w,left: 20.w),
                          child: Container(
                            child: Icon(Icons.delete,color: AppColor.mainColor),
                            decoration: BoxDecoration(
                              color: AppColor.mainColor.withOpacity(0.35),
                              borderRadius: BorderRadius.circular(20.r)
                            ),
                          ),
                        ),
                        key: UniqueKey(),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Container(
                            child: Row(children: [
                              Container(
                                width: 104.w,
                                height: 111.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppImage.homegird),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 25.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextCheckOutWidget("ثوب فلسطيني مطرز"),
                                    TextCheckOutWidget("25\$ X 2"),
                                    TextCheckOutWidget("XL , أحمر"),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(top: 70.h),
                                child: Container(
                                  width: 100.w,
                                  height: 30.h,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: AppColor.mainColor,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                bottom: 15),
                                            child: Icon(Icons.minimize,
                                                color: AppColor.white),
                                          )),
                                      SizedBox(width: 5.w),
                                      Text(
                                        '2',
                                        style: TextStyle(
                                          fontFamily: 'SF Display',
                                          fontSize: 18.0,
                                          color: AppColor.mainColor,
                                          letterSpacing: 0.21705884170532225,
                                          fontWeight: FontWeight.w600,
                                          height: 0.8.h,
                                        ),
                                      ),
                                      SizedBox(width: 5.w),
                                      CircleAvatar(
                                          backgroundColor: AppColor.mainColor,
                                          child: Icon(
                                            Icons.add, color: Colors.white,)),
                                    ],
                                  ),
                                ),
                              )
                            ]),
                            height: 120.h,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black.withOpacity(0.11),
                                      spreadRadius: 1,
                                      offset: Offset(0, 0)),
                                ],
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(20.r)),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(
                          height: 10.h,
                        ),
                    itemCount: 3),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 5.h),
                      child: Row(
                        children: [
                          TextCheckOutWidget("إجمالي العناصر"),
                          Spacer(),
                          TextCheckOutWidget("75\$"),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 5.h),
                      child: Row(
                        children: [
                          TextCheckOutWidget("إجمالي العناصر"),
                          Spacer(),
                          TextCheckOutWidget("75\$"),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 5.h),
                      child: Row(
                        children: [
                          TextCheckOutWidget("إجمالي العناصر"),
                          Spacer(),
                          TextCheckOutWidget("75\$"),
                        ],
                      ),
                    ),
                  ],
                ),
                height: 130.h,
                width: 318.w,
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(20.r)
                ),
              ),
              SizedBox(height: 40.h,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)
                  )

                ),
                onPressed: () {}, child:
              SizedBox(
                width: 290.w,
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'الذهاب الى الدفع',
                      style: GoogleFonts.roboto(
                        fontSize: 14.spMin,
                        color: AppColor.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '(330\$)',
                      style: GoogleFonts.roboto(
                        fontSize: 14.spMin,
                        color: AppColor.white,
                      ),
                      textAlign: TextAlign.center,
                    ),

                  ],
                ),
              ),)
            ],
          )),
    );
  }
}
