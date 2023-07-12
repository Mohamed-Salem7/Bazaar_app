import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/layers/Authnication/join_store_screen.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/Divider.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/New_Account.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/Rules_Widget.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/Social_Account.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/LogoAuth.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/forget_widget.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/login_text.dart';
import 'package:bazaar/presntaion/layers/main_screen/main_screen.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Main_Button.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Text_field_auth.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/component.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key, required this.isSeller}) : super(key: key);

  final bool isSeller;

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
                    const LogoAuth(),
                    LoginText(title: isSeller ? 'إنضم كمتجر' : 'تسجيل'),
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
                      height: isSeller ? 15.h : 20.h,
                    ),
                    if (isSeller)
                      TextFieldAuth(
                        isPassword: false,
                        textInputType: TextInputType.streetAddress,
                        title: 'المدينة',
                        icon: AppImage.locationImg,
                      ),
                    if (isSeller)
                      SizedBox(
                        height: 15.h,
                      ),
                    if (isSeller)
                      TextFieldAuth(
                        isPassword: false,
                        textInputType: TextInputType.streetAddress,
                        title: 'العنوان',
                        icon: AppImage.locationImg,
                      ),
                    if (!isSeller) const RulesWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                    MainButton(
                      title: isSeller ? 'التالي' : 'تسجيل',
                      function: ()
                      {
                        if(isSeller)
                        {
                          Get.to(const JoinAsStore(),);
                        }else
                        {
                          navigatorFinished(context,const MainScreen());
                        }

                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    const NewAccountWidget(isLogin: false),
                    if (!isSeller) const DividerLogin(),
                    if (!isSeller)
                      SizedBox(
                        height: 35.h,
                      ),
                    if (!isSeller)
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
