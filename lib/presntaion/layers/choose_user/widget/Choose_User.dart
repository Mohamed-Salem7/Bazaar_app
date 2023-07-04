import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/layers/choose_user/widget/Container_Select_User.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseUserBody extends StatelessWidget {
  const ChooseUserBody(
      {Key? key, required this.title, required this.image, required this.index})
      : super(key: key);

  final String title;
  final String image;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {

          return Column(
            children: [
                ContainerSelectUser(image: image, index: index,),

              SizedBox(
                height: 15.h,
              ),
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 24.0.spMin,
                  color: AppColor.black,
                  letterSpacing: -0.8571428833007813.spMin,
                  height: 0.79.h,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          );
        });
  }
}
