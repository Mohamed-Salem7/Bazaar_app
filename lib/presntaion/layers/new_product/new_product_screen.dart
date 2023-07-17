import 'package:bazaar/presntaion/layers/Setting/screen/shipping_addresses/widget/text_field_address.dart';
import 'package:bazaar/presntaion/layers/new_product/widget/size_product.dart';
import 'package:bazaar/presntaion/layers/new_product/widget/text_field.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Main_Button.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NewProductScreen extends StatelessWidget {
  const NewProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> size = [
      'S',
      'M',
      'L',
      'XL',
      '2X',
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWidget(
                title: 'إضافة منتج جديد',
                isEditProfile: false,
                context: context,
              ),
              const TextFieldNewProduct(
                title: 'إسم المنتج',
                textField: 'أدخل إسم المنتج',
                isFilter: false,
                isMoney: false,
                discount: false,
                textInputType: TextInputType.text,
              ),
              const TextFieldNewProduct(
                title: 'التصنيف الأساسي',
                textField: 'أدخل التصنيف الأساسي',
                isFilter: true,
                isMoney: false,
                discount: false,
                textInputType: TextInputType.text,
              ),
              const TextFieldNewProduct(
                title: 'التصنيف الفرعي',
                textField: 'أدخل التصنيف الفرعي',
                isFilter: true,
                isMoney: false,
                discount: false,
                textInputType: TextInputType.text,
              ),
              const TextFieldNewProduct(
                title: 'السعر',
                textField: 'أدخل السعر',
                isFilter: false,
                isMoney: true,
                discount: false,
                textInputType: TextInputType.numberWithOptions(signed: false),
              ),
              const TextFieldNewProduct(
                title: 'الخصم',
                textField: 'أدخل نسبة الخصم',
                isFilter: false,
                isMoney: false,
                discount: true,
                textInputType: TextInputType.number,
              ),
              const TextFieldNewProduct(
                title: 'الكمية',
                textField: 'أدخل الكمية',
                isFilter: false,
                isMoney: false,
                discount: false,
                textInputType: TextInputType.number,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: Text(
                        'المقاسات المتوفرة',
                        style: GoogleFonts.roboto(
                          fontSize: 14.spMin,
                          color: AppColor.black2,
                          letterSpacing: -0.33764706039428716,
                          height: 1.57,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      height: 55.h,
                      child: ListView.separated(
                        itemCount: size.length,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return SizeProduct(
                            title: size[index],
                          );
                        },
                        separatorBuilder: (context,index)
                        {
                          return SizedBox(width: 15.w,);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
                child: MainButton(title: 'التالي',function: (){}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
