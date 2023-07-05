import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/component/Main_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  SizedBox(
                    width: 60.w,
                  ),
                  Center(
                    child: Text(
                      'الأحكام و الشروط',
                      style: GoogleFonts.tajawal(
                        fontSize: 16.spMax,
                        color: AppColor.black,
                        letterSpacing: -0.5714285888671875.spMin,
                        height: 2.19.h,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 569.h,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Text(
                    'تمنع محدودية الوصول إلى السوق العالمية العديد من الحرفيات\n الفلسطينيات الموهوبات من بناء مهن من خ  ل مهاراتهن\n في الخياطة والتطريز والتصميم أنشأت مركز الحرفيين ”كأس\n الطفل الكامل“ في الزبابدة ، وهي قرية في شمال \nالضفة الغربية ، بهدف خلق فرصة اقتصادية دائمة للمجتمعات\n كثر تهميشًا في الضفة الغربية: ال  جئات والفقيرات\n.على مدار السنوات ا  ربع الماضية ، أنشأت المنظمة الصغيرة\n غير الربحية خطي إنتاج للسوق الامريكية.\nتمنع محدودية الوصول إلى السوق العالمية العديد من الحرفيات\n الفلسطينيات الموهوبات من بناء مهن من خ  ل مهاراتهن\n في الخياطة والتطريز والتصميم أنشأت مركز الحرفيين ”كأس\n الطفل الكامل“ في الزبابدة ، وهي قرية في شمال \nالضفة الغربية ، بهدف خلق فرصة اقتصادية دائمة للمجتمعات\n كثر تهميشًا في الضفة الغربية: ال  جئات والفقيرات\n.على مدار السنوات ا  ربع الماضية ، أنشأت المنظمة الصغيرة\n غير الربحية خطي إنتاج للسوق الامريكية.\nتمنع محدودية الوصول إلى السوق العالمية العديد من الحرفيات\n الفلسطينيات الموهوبات من بناء مهن من خ  ل مهاراتهن\n في الخياطة والتطريز والتصميم أنشأت مركز الحرفيين ”كأس\n الطفل الكامل“ في الزبابدة ، وهي قرية في شمال \nالضفة الغربية ، بهدف خلق فرصة اقتصادية دائمة للمجتمعات\n كثر تهميشًا في الضفة الغربية: ال  جئات والفقيرات\n.على مدار السنوات ا  ربع الماضية ، أنشأت المنظمة الصغيرة\n غير الربحية خطي إنتاج للسوق الامريكية.\nتمنع محدودية الوصول إلى السوق العالمية العديد من الحرفيات\n الفلسطينيات الموهوبات من بناء مهن من خلال مهاراتهن',
                    style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      color: AppColor.black2,
                      letterSpacing: -0.33764706039428716.spMin,
                      height: 1.57.h,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              MainButton(title: 'أوافق', function: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
