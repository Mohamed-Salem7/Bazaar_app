import 'package:bazaar/presntaion/layers/Setting/screen/order/widget/Tab_bar_order.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/order/widget/body_store.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/order/widget/info_store.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/order/widget/photo_store.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/Title_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Column(
              children: [
                const TitleWidget(title: 'الطلبات', isEditProfile: false),
                const TabBarOrder(),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        itemCount: 4,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => const BodyStore(),
                      ),
                      ListView.builder(
                        itemCount: 4,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => const BodyStore(),
                      ),
                      ListView.builder(
                        itemCount: 4,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => const BodyStore(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
