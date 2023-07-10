import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 10.h),
          child: Stack(
              alignment: AlignmentDirectional.center, children: [
            CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 1.7.h,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Positioned(
              bottom: 28.h,
              child: Row(
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 7.w,
                      height: 7.h,
                      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == entry.key?AppColor.black:AppColor.white),
                    ),
                  );
                }).toList(),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(child: Image.asset(item,fit: BoxFit.contain)))
    .toList();

final List<String> imgList = [
  AppImage.slider,
  AppImage.slider,
  AppImage.slider,

];
