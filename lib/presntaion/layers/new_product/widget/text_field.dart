import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldNewProduct extends StatelessWidget {
  const TextFieldNewProduct({
    Key? key,
    required this.title,
    required this.textField,
    required this.isFilter,
    required this.isMoney,
    required this.discount,
    required this.textInputType,
  }) : super(key: key);

  final String title;
  final String textField;
  final bool isFilter;
  final bool isMoney;
  final bool discount;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 14.sp,
              color: AppColor.black2,
              letterSpacing: -0.33764706039428716.spMin,
              height: 1.57.h,
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: Container(
              width: 327.w,
              height: 45.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColor.white9,
                border: Border.all(
                  width: 0.3.w,
                  color: const Color(0xFF707070).withOpacity(0.22.spMin),
                ),
              ),
              child: isFilter
                  ? DropDownTextField(
                      textFieldDecoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: textField,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        hintStyle: GoogleFonts.roboto(
                          fontSize: 12.spMin,
                          color: const Color(0xFFBEBEBE),
                          letterSpacing: -0.2894117660522461.spMin,
                          height: 1.83.h,
                        ),
                      ),
                      dropDownIconProperty: IconProperty(
                          icon: Icons.keyboard_arrow_down_sharp,
                          size: 30.spMin),
                      dropDownList: const [
                        DropDownValueModel(name: 'name1', value: "value1"),
                        DropDownValueModel(name: 'name2', value: "value2"),
                        DropDownValueModel(name: 'name3', value: "value3"),
                        DropDownValueModel(name: 'name4', value: "value4"),
                      ],
                    )
                  : isMoney
                      ? Row(
                          children: [
                            SizedBox(
                              width: 235.w,
                              child: TextFormField(
                                cursorColor: AppColor.mainColor,
                                keyboardType: textInputType,
                                style: GoogleFonts.roboto(
                                  fontSize: 14.sp,
                                  color: AppColor.black2,
                                  letterSpacing: -0.33764706039428716.spMin,
                                  height: discount ? 1.80.h : 1.57.h,
                                ),
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  hintText: textField,
                                  suffixIcon: discount
                                      ? Icon(
                                          Icons.percent_outlined,
                                          color: AppColor.black2,
                                          size: 18.spMin,
                                        )
                                      : null,
                                  hintStyle: GoogleFonts.roboto(
                                    fontSize: 12.spMin,
                                    color: const Color(0xFFBEBEBE),
                                    letterSpacing: -0.2894117660522461.spMin,
                                    height: 1.83.h,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 80.w,
                              child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: DropDownTextField(
                                  textFieldDecoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'USD',
                                    contentPadding:
                                        EdgeInsets.only(left: 8.w, top: 12.h),
                                    hintStyle: GoogleFonts.roboto(
                                      fontSize: 16.0,
                                      color: AppColor.black2,
                                      letterSpacing: -0.38588235473632815,
                                      height: 1.38,
                                    ),
                                  ),
                                  dropDownIconProperty: IconProperty(
                                      icon: Icons.keyboard_arrow_down_sharp,
                                      size: 30.spMin),
                                  dropDownList: const [
                                    DropDownValueModel(
                                        name: 'USD', value: "value1"),
                                    DropDownValueModel(
                                        name: 'ILS', value: "value2"),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      : TextFormField(
                          cursorColor: AppColor.mainColor,
                          keyboardType: textInputType,
                          style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            color: AppColor.black2,
                            letterSpacing: -0.33764706039428716.spMin,
                            height: discount ? 1.80.h : 1.57.h,
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 8.w),
                            hintText: textField,
                            suffixIcon: discount
                                ? Icon(
                                    Icons.percent_outlined,
                                    color: AppColor.black2,
                                    size: 18.spMin,
                                  )
                                : null,
                            hintStyle: GoogleFonts.roboto(
                              fontSize: 12.spMin,
                              color: const Color(0xFFBEBEBE),
                              letterSpacing: -0.2894117660522461.spMin,
                              height: 1.83.h,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
            ),
          ),
        ],
      ),
    );
  }
}
