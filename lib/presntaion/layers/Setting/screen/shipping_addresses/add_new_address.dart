import 'package:bazaar/presntaion/layers/Setting/screen/shipping_addresses/widget/text_field_address.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Main_Button.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      'الإسم كامل',
      'رقم الجوال',
      'الدولة',
      'المدينة',
      'الشارع',
      'رمز البريد',
    ];

    List<bool> isPhone = [
      false,
      true,
      false,
      false,
      false,
      false,
    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: TitleWidget(
            title: 'إضافة عنوان جديد', isEditProfile: false,context: context),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 550.h,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(0),
                    itemBuilder: (context, index) => TextFieldAddAddress(
                          title: title[index],
                          isPhone: isPhone[index],
                        ),
                    itemCount: title.length),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: MainButton(title: 'حفظ', function: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
