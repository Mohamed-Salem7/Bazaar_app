import 'package:bazaar/presntaion/layers/Setting/screen/shipping_addresses/widget/address_widget.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/shipping_addresses/widget/location_icon.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/shipping_addresses/widget/name_address.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/shipping_addresses/widget/phone_address.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/App_Color.dart';

class ShippingAddressBody extends StatelessWidget {
  const ShippingAddressBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      'فلسطين',
      'غزة',
      'شارع الرشيد',
      'P340',
    ];
    return Container(
      width: 298.w,
      height: 114.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: const Color(0xFFFBFBFB),
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withOpacity(0.05.spMin),
            offset: Offset(0.w, 6.h),
            blurRadius: 12.r,
          ),
        ],
      ),
      child: Row(
        children: [
          LocationIcon(),
          SizedBox(
            width: 5.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const NameInAddress(),
                const PhoneInAddress(),
                SizedBox(
                  height: 30.h,
                  width: 190.w,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        AddressText(title:title[index],index: index,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
