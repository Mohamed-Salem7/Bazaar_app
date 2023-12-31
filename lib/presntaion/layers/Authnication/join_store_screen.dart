import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/layers/main_screen/main_screen.dart';
import 'package:bazaar/presntaion/utils/Global widget/Title_Widget.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/brief_field.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/check_widget.dart';
import 'package:bazaar/presntaion/layers/Authnication/widget/logo_store.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Main_Button.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Text_field_auth.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JoinAsStore extends StatelessWidget {
  const JoinAsStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BlocConsumer<AuthCubit, AuthState>(
          builder: (context, state) {
            var cubit = AuthCubit.get(context);
            return Scaffold(
              appBar:  TitleWidget(
                  title: 'إنضم كمتجر', isEditProfile: false,context: context),
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Column(
                    children: [

                      const LogoStore(),
                      SizedBox(
                        height: 30.h,
                      ),
                      TextFieldAuth(
                        isPassword: false,
                        textInputType: TextInputType.phone,
                        title: 'إسم المتجر',
                        icon: AppImage.personImg,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const BriefField(),
                      SizedBox(
                        height: 8.h,
                      ),
                      CheckWidget(cubit: cubit),
                      SizedBox(
                        height: 15.h,
                      ),
                      MainButton(
                        title: 'إنضمام',
                        function: () {
                          navigatorFinished(context,const MainScreen());
                        },
                        isNewProduct : false,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          listener: (context, state) {}),
    );
  }
}
