import 'package:bike_rental/data.dart';
import 'package:bike_rental/pages/cart_page.dart';
import 'package:bike_rental/pages/favorites_page.dart';
import 'package:bike_rental/pages/product_details.dart';
import 'package:bike_rental/utils/app_colors.dart';
import 'package:bike_rental/utils/dimensions.dart';
import 'package:bike_rental/widgets/item.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Row(
            children: [
              Text('Puducherry'),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.location_on_outlined),
              SizedBox(
                width: 5,
              ),
            ],
          )
        ],
      ),
      body: _getPage(currentPage),
      drawer: const Drawer(),
      bottomNavigationBar: FancyBottomNavigation(
        barBackgroundColor: AppColors.indigo,
        activeIconColor: Colors.black,
        inactiveIconColor: AppColors.white,
        circleColor: AppColors.white,
        tabs: [
          TabData(
            iconData: Icons.home,
            title: "",
          ),
          TabData(
            iconData: Icons.favorite_border_outlined,
            title: "",
          ),
          TabData(
            iconData: Icons.shopping_bag_rounded,
            title: "",
          )
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return const HomePageView();
      case 1:
        return const FavoritesPage();
      case 2:
        return const CartPage();
    }
  }
}

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Most popular',
                      style: GoogleFonts.ptSans().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      )),
                  Text('See all', style: GoogleFonts.montserrat()),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      height: Dimensions.screenHeight * .3,
                      child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () => Get.to(() => ProductDetails(
                                      obj: Datas.popularBikes[index],
                                    )),
                                child:
                                    TileItem(obj: Datas.popularBikes[index]));
                          }),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New Models',
                      style: GoogleFonts.ptSans().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      )),
                  Text('See all', style: GoogleFonts.montserrat()),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      height: Dimensions.screenHeight * .7,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () => Get.to(() => ProductDetails(
                                      obj: Datas.newBikes,
                                    )),
                                child: VerticalTileItem(
                                    obj: Datas.newBikes[index]));
                          }),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
