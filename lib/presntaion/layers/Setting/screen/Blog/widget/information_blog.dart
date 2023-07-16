import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationBlog extends StatelessWidget {
  const InformationBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: 300.h,
      child: Container(
        width: 360.w,
        height: 506.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(57.r),
          ),
          color: AppColor.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'كيف بدأنا',
                style: GoogleFonts.roboto(
                  fontSize: 20.spMin,
                  color: AppColor.black2,
                  letterSpacing: -0.4823529434204102.spMin,
                  fontWeight: FontWeight.w700,
                  height: 1.15.h,
                ),
                textAlign: TextAlign.right,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Text(
                    'تمنع محدودية الوصول إلى السوق العالمية العديد من \nالحرفيات الفلسطينيات الموهوبات\n .من بناء مهن من خلال مهاراتهن في الخياطة والتطريز \nوالتصميم \n\nأنشأت مركز الحرفيين ”كأس الطفل الكامل“ في الزبابدة ، \nوهي قرية في شمال الضفة الغربية ، بهدف خلق فرصة\nاقتصادية دائمة للمجتمعات ا  كثر تهميشًا في\n الضفة الغربية:اللاجئات والفقيرات \n\nعلى مدار السنوات ا  ربع الماضية ، أنشأت المنظمة \nالصغيرة غير الربحية خطي إنتاج للسوق ا  مريكية: كأس \nالطفل الكامل   لعاب ا  طفال ، وأحذية وإكسسوارات \nدارزة تطريز .المطرزة\n\nتمنع محدودية الوصول إلى السوق العالمية العديد \nمن الحرفيات الفلسطينيات الموهوبات .من بناء مهن\n من خلال مهاراتهن في الخياطة والتطريز والتصميم',
                    style: GoogleFonts.roboto(
                      fontSize: 16.spMin,
                      color: AppColor.black2,
                      letterSpacing: -0.38588235473632815.spMin,
                      height: 1.44.h,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
