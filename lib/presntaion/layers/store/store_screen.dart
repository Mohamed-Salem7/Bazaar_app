import 'package:bazaar/presntaion/layers/store/widget/body_store.dart';
import 'package:bazaar/presntaion/layers/store/widget/search_field.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
