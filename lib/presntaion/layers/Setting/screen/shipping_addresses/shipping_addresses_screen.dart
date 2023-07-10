import 'package:bazaar/presntaion/layers/Setting/screen/shipping_addresses/add_new_address.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/shipping_addresses/widget/Box_Address.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Main_Button.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Secondry_Button.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ShippingAddresses extends StatelessWidget {
  const ShippingAddresses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h,),
          child: Column(
            children: [
              const TitleWidget(
                title: 'عناوين الشحن',
                isEditProfile: false,
              ),
              const BoxAddress(),
              SizedBox(
                height: 20.h,
              ),
              SecondaryButton(
                title: 'إضافة عنوان جديد +',
                function: ()
                {
                  Get.to(const AddNewAddress(),transition: Transition.rightToLeft);
                },
              ),
              MainButton(title: 'متابعة', function: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
