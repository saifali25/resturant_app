import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/constants/images.dart';
import 'package:resturant_app/screens/coupon_screen.dart';
import 'package:resturant_app/screens/kava_zdarama.dart';
import 'package:resturant_app/screens/menu.dart';
import 'package:resturant_app/screens/otarviche_hodiny.dart';
import 'package:resturant_app/screens/pivo_zdarma.dart';
import 'package:resturant_app/widgets/app_text.dart';

import '../constants/colors.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  final List<String> imagesList = [
    AppImages.sliderImage1,
    AppImages.sliderImage1,
    AppImages.sliderImage1,
  ];
  final List<String> titles = [
    "UNIVA bude už\nuž túto sobotu na ŠTRAMÁK FEST 2022",
    "UNIVA bude už\nuž túto sobotu na ŠTRAMÁK FEST 2022",
    "UNIVA bude už\nuž túto sobotu na ŠTRAMÁK FEST 2022",
  ];

  final List<String> menuTileImages = [
    AppImages.couponMenuIcon,
    AppImages.pivoMenuIcon,
    AppImages.denneMenuIcon,
    AppImages.donaskaMenuIcon,
    AppImages.hodinyMenuIcon,
  ];

  final List<String> menuTileText = [
    "Kupóny",
    "5+1 pivo\nzdarma",
    "Denné \nmenu",
    "Donáška",
    "Otváracie \nhodiny",
  ];

  final List<MaterialPageRoute> menuNavigation = [
    MaterialPageRoute(builder: (context) => const CouponScreen()),
    MaterialPageRoute(builder: (context) => const PivoZdarma()),
    MaterialPageRoute(builder: (context) => DenneMenu()),

    //Temp Navigation
    MaterialPageRoute(builder: (context) => const KavaZdarama()),

    MaterialPageRoute(builder: (context) => const OtvaracieHodiny()),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: [
              CarouselSlider(
                items: imagesList
                    .map(
                      (item) => Card(
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              item,
                              fit: BoxFit.fitWidth,
                              width: 375.w,
                            ),
                            Center(
                                child: AppText(
                              text: '${titles[_currentIndex]}',
                              fontWeight: FontWeight.w800,
                              fontSize: 25.sp,
                              textAlign: TextAlign.center,
                              color: AppColors.white,
                            )),
                          ],
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  //scrollDirection: Axis.vertical,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
              ),
              Positioned(
                left: 20.w,
                top: 20.h,
                child: Image.asset(AppImages.menuIcon),
              ),
            ]),

            ///Indicator Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: imagesList.map((urlOfItem) {
                int index = imagesList.indexOf(urlOfItem);
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? AppColors.white
                        : const Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                );
              }).toList(),
            ),

            //Menu List
            SizedBox(
              width: 375.w,
              height: 750.h,
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: GestureDetector(
                          onTap: () =>
                              Navigator.push(context, menuNavigation[index]),
                          child: Container(
                            width: 375.w,
                            height: 120.h,
                            color: AppColors.orange,
                            child: Row(
                              children: [
                                Container(
                                  width: 214.w,
                                  height: 120.h,
                                  child: Image.asset(
                                    menuTileImages[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                AppText(
                                  text: menuTileText[index],
                                  fontSize: 27.sp,
                                  fontWeight: FontWeight.w700,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(height: 13.h),
                  itemCount: menuTileImages.length),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
