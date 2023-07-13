import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BriefText extends StatelessWidget {
  const BriefText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 5.h,right: 5.w),
      child: Text.rich(
        TextSpan(
          style: GoogleFonts.roboto(
            fontSize: 16.spMin,
            color: AppColor.black,
            letterSpacing: -0.5714285888671875.spMin,
            height: 1.0.h,
          ),
          children: [
            const TextSpan(
              text:
              '  منذ أول فستان من الكتان تم إنشاؤه في عام 2014 ، قمنا    \nبقص وخياطة جميع ملابس الكتان الخاصة بنا محليًا في ليتوانيا باستخدام الكتان\n  كنا نبحث عن ملابس كتان بسيطة ومتينة وعالية الجودة \nبسعر Linenfox بدأنا (أنا وزوجي) .Oeko الخالي من \nالسموم والمعتمد من معقول ولم نتمكن من العثور عليها. قادتنا القطع الاولى إلى آخرين ونحن الآن شركة مكونة من شخصًا يعملون معًا كل يوم  \nسباب عديدة: الجودة وا  ستدامة وأخيراً ، من أجل منتج صديق للبيئة مصنوع بالحب ',
            ),
            TextSpan(
              text: 'المزيد',
              style: GoogleFonts.roboto(
                fontSize: 18.spMin,
                color: const Color(0xFF818181),
                letterSpacing: -0.6428571624755859.spMin,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.right,
      ),
    );
  }
}
