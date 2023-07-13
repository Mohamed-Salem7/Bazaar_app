import 'package:bazaar/controller/main/cubit.dart';
import 'package:bazaar/controller/main/state.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/Body_Revision.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/app_bar.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/brief_body.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/divaider_store.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/favorite_filter_button.dart';
import 'package:bazaar/presntaion/layers/details_store/widget/tab_bar_store.dart';
import 'package:bazaar/presntaion/layers/home_screen/widget/grid_view_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsStoreScreen extends StatelessWidget {
  const DetailsStoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MainCubit.get(context);
          return Scaffold(
            body: Column(
              children: [
                const AppBarStore(),
                const FavoriteFilterButton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabBarStore(cubit: cubit, i: 0, title: 'العناصر'),
                    TabBarStore(cubit: cubit, i: 1, title: 'المراجعات'),
                    TabBarStore(cubit: cubit, i: 2, title: 'نبذة'),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                DividerStore(cubit: cubit),
                if (cubit.indexStore == 0)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: GridViewHome(),
                    ),
                  ),
                if (cubit.indexStore == 1)
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.all(0),
                      itemBuilder: (context, index) {
                        return BodyRevision(
                          index: index,
                        );
                      },
                    ),
                  ),
                if (cubit.indexStore == 2)
                 const BriefBody(),
              ],
            ),
          );
        },
      ),
    );
  }
}
