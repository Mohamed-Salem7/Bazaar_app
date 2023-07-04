import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerSelectUser extends StatelessWidget {
  const ContainerSelectUser({Key? key, required this.image}) : super(key: key);


  final String image;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit,AuthState>(
        builder: (context, state) {
          var cubit = AuthCubit.get(context);
          return Stack(
            children: [
              Container(
                alignment: Alignment.center,
                width: 126.w,
                height: 126.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                  color: AppColor.white,
                  border: cubit.changeSelectUserSallers
                      ? Border.fromBorderSide(
                          BorderSide(color: AppColor.mainColor, width: 2.w))
                      : null,
                  boxShadow: [
                    BoxShadow(
                      color: cubit.changeSelectUserSallers
                          ? Colors.transparent
                          : AppColor.black.withOpacity(0.16.spMin),
                      offset: Offset(0.w, 1.h),
                      blurRadius: 5.r,
                    ),
                  ],
                ),
                child: Image(
                  image: AssetImage(
                    image,
                  ),
                  height: 50.h,
                  width: 50.w,
                ),
              ),
              if (cubit.changeSelectUserSallers)
                PositionedDirectional(
                  start: 105.w,
                  child: CircleAvatar(
                    backgroundColor: AppColor.mainColor,
                    radius: 10.r,
                    child: Icon(
                      Icons.done,
                      size: 15.spMin,
                      color: AppColor.white,
                    ),
                  ),
                ),
            ],
          );
        },
        listener: (context, state) {});
  }
}
