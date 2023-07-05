import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/layers/choose_user/widget/logo_choose_user.dart';
import 'package:bazaar/presntaion/layers/login/widget/Divider.dart';
import 'package:bazaar/presntaion/layers/login/widget/New_Account.dart';
import 'package:bazaar/presntaion/layers/login/widget/Social_Account.dart';
import 'package:bazaar/presntaion/layers/login/widget/email_image.dart';
import 'package:bazaar/presntaion/layers/login/widget/forget_widget.dart';
import 'package:bazaar/presntaion/layers/login/widget/login_text.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/component/Main_Button.dart';
import 'package:bazaar/presntaion/utils/component/Text_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      builder: (context, state) {

        List<String> images =[AppImage.twitterImg,AppImage.googleImg,AppImage.facebookImg];
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 37.h,
                  ),
                  Center(
                    child: Image(
                      image: const AssetImage(
                        AppImage.logo2Img,
                      ),
                      width: 150.w,
                      height: 69.h,
                    ),
                  ),
                  const LoginText(),
                  const TextFieldAuth(isPassword: false),
                  SizedBox(
                    height: 15.h,
                  ),
                  const TextFieldAuth(isPassword: true),
                  SizedBox(
                    height: 30.h,
                  ),
                  MainButton(
                    title: 'تسجيل الدخول',
                    function: () {},
                  ),
                  const ForgetWidget(),
                  const NewAccountWidget(),
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
                          separatorBuilder: (context,index) => SizedBox(width: 10.w,),
                          itemCount: 3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
