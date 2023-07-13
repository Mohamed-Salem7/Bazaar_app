import 'package:bazaar/presntaion/layers/Setting/screen/contact_us/widget/body.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/contact_us/widget/text_field_message.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/shipping_addresses/widget/text_field_address.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Main_Button.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      '+970567576224',
      'hindswan5@gmail.com',
      'فلسطين - غزة - شارع الرشيد',
    ];

    List<String> image = [
      AppImage.phonesImg,
      AppImage.emailsImg,
      AppImage.locationsImg,
    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: TitleWidget(title: 'تواصل معنا', isEditProfile: false,context: context),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [

                SizedBox(
                  height: 160.h,
                  width: 226.w,
                  child: ListView.separated(
                    itemCount: 3,
                    padding: const EdgeInsets.all(0),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BodyContactUs(
                        image: image[index],
                        title: title[index],
                      );
                    },
                    separatorBuilder: (context, index) => index != 2
                        ? SizedBox(
                            height: 10.h,
                          )
                        : SizedBox(
                            height: 0.h,
                          ),
                  ),
                ),
                const TextFieldAddAddress(title: 'الاسم كامل', isPhone: false),
                const TextFieldAddAddress(title: 'رقم الجوال', isPhone: true),
                const TextFieldAddAddress(
                    title: 'البريد الالكتروني', isPhone: false),
                SizedBox(
                  height: 10.h,
                ),
                const TextFieldMessage(),
                SizedBox(
                  height: 10.h,
                ),
                MainButton(
                  title: 'إرسال',
                  function: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
