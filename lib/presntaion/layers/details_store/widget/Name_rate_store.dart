import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NameRateStore extends StatelessWidget {
  const NameRateStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'هند صوان',
          style: GoogleFonts.roboto(
            fontSize: 16.spMin,
            color: AppColor.black,
            letterSpacing: -0.5714285888671875.spMin,
            fontWeight: FontWeight.w500,
            height: 1.19.spMin,
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        SizedBox(
          width: 70.w,
          height: 20.h,
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.star,
                size: 15.spMin,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 15.spMin,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 15.spMin,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 15.spMin,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                size: 15.spMin,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
