import 'package:bazaar/presntaion/layers/Setting/screen/payment_method/widget/entry_info_visa.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/payment_method/widget/payment_widget.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/payment_method/widget/visa_widget.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Main_Button.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<bool> isSelect = [
      false,
      false,
      true,
    ];

    List<String> image = [
      AppImage.cashsImg,
      AppImage.paypalsImg,
      AppImage.visasImg,
    ];
    List<String> image2 = [
      AppImage.cashunImg,
      AppImage.paypalunImg,
      AppImage.visaunImg,
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: TitleWidget(title: 'طرق الدفع', isEditProfile: false,context: context),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: Text(
                          'اختر طريقة الدفع',
                          style: GoogleFonts.tajawal(
                            fontSize: 18.sp,
                            color: AppColor.black,
                            letterSpacing: -0.6428571624755859.spMin,
                            height: 1.06.h,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 80.h,
                        child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.all(0),
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: SelectPaymentWidget(
                              image2: image2[index],
                              image: image[index],
                              isSelect: isSelect[index],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 190.h,
                  child: ListView.builder(
                    itemCount: 2,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return VisaWidget(index: index);
                    },
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w,),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '+',
                            style: TextStyle(
                              fontSize: 28.sp,
                              color: AppColor.mainColor,
                              letterSpacing: -1.0000000305175782.spMin,
                              height: 0.68.h,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'أو اختر بطاقة أخرى ',
                            style: GoogleFonts.tajawal(
                              fontSize: 18.sp,
                              color: AppColor.mainColor,
                              letterSpacing: -0.6428571624755859.spMin,
                              height: 1.06.h,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h,bottom: 10.h),
                        child:  EntryInfoVisa(title: 'الاسم على البطاقة',hintText: 'هند صوان',isDate: false,isSecure: false),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: 10.h),
                        child:   EntryInfoVisa(title: 'رقم البطاقة',hintText: '40xxx xxxx xxxx',isDate: false,isSecure: false),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: 10.h),
                        child:   EntryInfoVisa(title: 'تاريخ الإنتهاء',hintText:   '               YYYY',isDate: true,hintText2: '   DD - MM',isSecure: false),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h,bottom: 30.h),
                        child:  EntryInfoVisa(title: 'رمز الحماية',hintText: ' 0000',isDate: false,isSecure: true),
                      ),
                      MainButton(title: 'متابعة', function: (){},isNewProduct : false,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
