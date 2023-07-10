import 'package:bazaar/presntaion/layers/Setting/screen/order/widget/Details_button.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/order/widget/name_store.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/order/widget/time_store.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoStore extends StatelessWidget {
  const InfoStore({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const NameStore(),
            DetailsButton(index: index,),
          ],
        ),
        const TimeStore(),
      ],
    );
  }
}
