import 'package:bazaar/presntaion/layers/Setting/screen/contact_us/widget/text_field_message.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Main_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChattingStore extends StatelessWidget {
  const ChattingStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      child: SizedBox(
        height: 400.h,
        width: 320.w,
        child: Stack(
          children: [
            Positioned(
              top: 40.h,
              child: Container(
                width: 303.w,
                height: 360.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: const Color(0xFFF8F8F8),
                  border: Border.all(
                    width: 0.5.w,
                    color: const Color(0xFFC1C1C1),
                  ),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.w),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60.h,
                        ),
                        Text(
                          'متجر المنى',
                          style: GoogleFonts.roboto(
                            fontSize: 18.spMin,
                            color: AppColor.mainColor,
                            letterSpacing:
                            -0.6428571624755859.spMin,
                            fontWeight: FontWeight.w700,
                            height: 1.06.h,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 90.w,
                          height: 19.h,
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                            children: <Widget>[
                              Align(
                                alignment:
                                Alignment.bottomCenter,
                                child: Image(
                                  image: const AssetImage(
                                    AppImage
                                        .shippingAddressImg,
                                  ),
                                  width: 14.w,
                                  height: 17.h,
                                ),
                              ),
                              Text(
                                'فلسطين - غزة',
                                style: GoogleFonts.roboto(
                                  fontSize: 16.spMin,
                                  color: AppColor.black2,
                                  letterSpacing: -0.384.spMin,
                                  height: 1.18.h,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        const TextFieldMessage(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20.h,
                            right: 8.w,
                            left: 8.w,
                          ),
                          child: MainButton(
                            title: 'إرسال',
                            function: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 125.w,
              child: Container(
                width: 90.w,
                height: 90.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage(AppImage.avatarImg),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    width: 0.5.w,
                    color: const Color(0xFFE5E5E5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
