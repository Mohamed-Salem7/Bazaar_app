import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/Divider.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/New_Account.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/Rules_Widget.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/Social_Account.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/LogoAuth.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/forget_widget.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/login_text.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/component/Main_Button.dart';
import 'package:bazaar/presntaion/utils/component/Text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      builder: (context, state) {
        List<String> images = [
          AppImage.twitterImg,
          AppImage.googleImg,
          AppImage.facebookImg
        ];

        AuthCubit.get(context).changeSelectUserSeller = false;
        AuthCubit.get(context).changeSelectUserCustomer = false;
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const LogoAuth(),
                    const LoginText(title: 'تسجيل'),
                    TextFieldAuth(
                      isPassword: false,
                      textInputType: TextInputType.name,
                      title: 'الإسم',
                      icon: AppImage.personImg,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
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
                      height: 15.h,
                    ),
                    TextFieldAuth(
                      isPassword: false,
                      textInputType: TextInputType.phone,
                      title: 'رقم الجوال',
                      icon: AppImage.phoneImg,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const RulesWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    MainButton(
                      title: 'تسجيل',
                      function: () {},
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    const NewAccountWidget(isLogin: false),
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
