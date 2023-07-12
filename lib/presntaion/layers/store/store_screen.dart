import 'package:bazaar/presntaion/layers/store/widget/avatar_widget.dart';
import 'package:bazaar/presntaion/layers/store/widget/body_store.dart';
import 'package:bazaar/presntaion/layers/store/widget/favorite_widget.dart';
import 'package:bazaar/presntaion/layers/store/widget/rate_store.dart';
import 'package:bazaar/presntaion/layers/store/widget/search_field.dart';
import 'package:bazaar/presntaion/layers/store/widget/shadow_screen.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(title: 'المتاجر'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15.h),
              child: const SearchField(),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const BodyStore();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
