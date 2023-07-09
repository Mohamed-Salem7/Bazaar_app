import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditPhoto extends StatelessWidget {
  const EditPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 60.r,
          backgroundColor: Colors.grey.shade300.withOpacity(0.6),
          child: CircleAvatar(
            radius: 50.r,
            backgroundColor: Colors.grey.shade600.withOpacity(0.7),
          ),
        ),
        PositionedDirectional(
          top: 80.h,
          child: CircleAvatar(
            radius: 18.r,
            backgroundColor: Colors.grey.shade500.withOpacity(0.6),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: AppColor.mainColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
