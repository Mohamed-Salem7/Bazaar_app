import 'package:bazaar/presntaion/layers/Setting/screen/Edit_Profile/widget/city_text_field.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/Edit_Profile/widget/edit_photo.dart';
import 'package:bazaar/presntaion/layers/Setting/widget/Text_Field.dart';
import 'package:bazaar/presntaion/utils/Global widget/Title_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      'الإسم',
      'البريد الإلكتروني',
      'رقم الجوال',
      'المدينة',
      'العنوان',
    ];

    List<bool> isPhone = [
      false,
      false,
      true,
      false,
      false,
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: TitleWidget(
            title: 'تعديل الملف الشخصي', isEditProfile: true,context: context),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Column(
            children: [

              const EditPhoto(),
              Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      if(index != 3) {
                        return Padding(
                          padding:
                          EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
                          child: SettingTextField(
                            title: title[index],
                            function: () {},
                            isPhone: isPhone[index],
                          ),
                        );
                      }if(index == 3) {
                        return Padding(
                          padding: EdgeInsets.only(top: 10.h,
                              left: 10.w,
                              right: 10.w),
                          child: CityTextField(),
                        );
                      }
                    },
                    itemCount: title.length),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
