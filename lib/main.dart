import 'package:bazaar/controller/Auth/cubit.dart';
import 'package:bazaar/controller/main/cubit.dart';
import 'package:bazaar/controller/setting/cubit.dart';
import 'package:bazaar/presntaion/layers/Setting/Setting_Screen.dart';
import 'package:bazaar/presntaion/layers/discover/discover_screen.dart';
import 'package:bazaar/presntaion/layers/drower/main_drawer.dart';
import 'package:bazaar/presntaion/layers/home_screen/main_home_screen.dart';
import 'package:bazaar/presntaion/layers/item_details/item_details.dart';
import 'package:bazaar/presntaion/layers/main_screen/main_screen.dart';
import 'package:bazaar/presntaion/layers/splash/splash_screen.dart';
import 'package:bazaar/presntaion/layers/tab_bar_screen/tab_bar_screen.dart';
import 'package:bazaar/presntaion/layers/wallet/wallet_screen.dart';
import 'package:bazaar/presntaion/utils/network/local/cashe_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'presntaion/layers/swipe_checkout/main_swipe_checkout.dart';
import 'presntaion/utils/Global widget/constant.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await CacheHelper.init();



  if(CacheHelper.getData(key: 'isBoarding') != null)
  {
    isBoarding = CacheHelper.getData(key: 'isBoarding');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => MainCubit()),
        BlocProvider(create: (context) => SettingCubit()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 780),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return const GetMaterialApp(
              title: 'Bazaar',
              debugShowCheckedModeBanner: false,
              home: MainScreen(),
            );
          }),
    );
  }
}
