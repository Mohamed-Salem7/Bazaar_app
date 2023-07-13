import 'package:bazaar/controller/main/cubit.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/indicator_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerStore extends StatelessWidget {
  const DividerStore({Key? key, required this.cubit}) : super(key: key);

  final MainCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      width: double.infinity,
      color: const Color(0xff707070).withOpacity(0.11.spMin),
      child: Row(
        mainAxisAlignment: cubit.indexStore == 1
            ? MainAxisAlignment.center
            : (cubit.indexStore == 0
            ? MainAxisAlignment.start
            : MainAxisAlignment.end),
        children: [
          if (cubit.indexStore == 0)
            const IndicatorStore(isFirst: true, isLast: false),
          if (cubit.indexStore == 1)
            const IndicatorStore(isFirst: false, isLast: false),
          if (cubit.indexStore == 2)
            const IndicatorStore(isFirst: false, isLast: true),
        ],
      ),
    );
  }
}
