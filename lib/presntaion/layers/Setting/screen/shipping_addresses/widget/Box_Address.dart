import 'package:bazaar/controller/setting/cubit.dart';
import 'package:bazaar/controller/setting/state.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/shipping_addresses/widget/shipping_address_body.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxAddress extends StatelessWidget {
  const BoxAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingCubit,SettingState>(
        listener: (context,state){},
        builder:(context,state) {
          var cubit = SettingCubit.get(context);
          return Row(
            children: [
              Transform.scale(
                scale: 1.3.spMin,
                child: Checkbox(
                  value: cubit.isCheck,
                  tristate: true,
                  activeColor: AppColor.mainColor,
                  shape: const CircleBorder(),
                  onChanged: (value)
                  {
                    cubit.changeStateCheck();
                  },
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              const ShippingAddressBody(),
            ],
          );
        }
    );
  }
}
