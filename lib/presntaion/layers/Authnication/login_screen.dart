import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/Divider.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/New_Account.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/Social_Account.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/LogoAuth.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/forget_widget.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/login_text.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/component/Main_Button.dart';
import 'package:bazaar/presntaion/utils/component/Text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      builder: (context, state) {
        List<String> images = [
          AppImage.twitterImg,
          AppImage.googleImg,
          AppImage.facebookImg
        ];
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    LogoAuth(),
                    const LoginText(title: 'تسجيل دخول'),
                    TextFieldAuth(
                      isPassword: false,
                      textInputType: TextInputType.emailAddress,
                      title: 'البريد الإلكتروني',
                      icon: AppImage.emailImg,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextFieldAuth(
                      isPassword: true,
                      textInputType: TextInputType.visiblePassword,
                      title: 'كلمة المرور',
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    MainButton(
                      title: 'تسجيل الدخول',
                      function: () {},
                    ),
                    const ForgetWidget(),
                    const NewAccountWidget(isLogin: true),
                    SizedBox(
                      height: 20.h,
                    ),
                    const DividerLogin(),
                    SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 191.w,
                          height: 39.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SocialAccount(image: images[index]);
                            },
                            separatorBuilder: (context, index) => SizedBox(
                              width: 10.w,
                            ),
                            itemCount: 3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
