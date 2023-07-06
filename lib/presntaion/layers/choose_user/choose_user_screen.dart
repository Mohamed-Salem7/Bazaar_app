import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/layers/Authnication/register_screen.dart';
import 'package:bazaar/presntaion/layers/choose_user/widget/Choose_User.dart';
import 'package:bazaar/presntaion/layers/choose_user/widget/Text_user.dart';
import 'package:bazaar/presntaion/layers/choose_user/widget/background_bottom_image.dart';
import 'package:bazaar/presntaion/layers/choose_user/widget/logo_choose_user.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChooseUser extends StatelessWidget {
  const ChooseUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthCubit.get(context).changeSelectUserSeller = false;
    AuthCubit.get(context).changeSelectUserCustomer = false;
    List<String> title = ['تاجر', 'مشتري'];
    List<String> image = [AppImage.sallerImg, AppImage.customerImg];

    return BlocConsumer<AuthCubit, AuthState>(
        listener: (cubit, state) {},
        builder: (context, state) {
          var cubit = AuthCubit.get(context);
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
                horizontal: 10.w,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 35.h,
                  ),
                  const LogoChooseUser(),
                  const TextUser(),
                  SizedBox(
                    height: 180.h,
                    width: double.infinity,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: GestureDetector(
                            onTap: () {
                              if (index == 0) cubit.changeSelectUserSellers();
                              if (index == 1) cubit.changeSelectUserCustomers();


                              if((cubit.changeSelectUserCustomer && !cubit.changeSelectUserSeller))
                              {
                                Get.back();
                                Get.to(const  RegisterScreen(isSeller: false));
                              }

                              if((!cubit.changeSelectUserCustomer && cubit.changeSelectUserSeller))
                              {
                                Get.back();
                                Get.to(const  RegisterScreen(isSeller: true));
                              }

                            },
                            child: ChooseUserBody(
                              title: title[index],
                              image: image[index],
                              index: index,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 20.w,
                        );
                      },
                    ),
                  ),
                  const Expanded(child: BackgroundBottomImage()),
                ],
              ),
            ),
          );
        });
  }
}
