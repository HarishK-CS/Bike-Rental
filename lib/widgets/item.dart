import 'package:bike_rental/utils/app_colors.dart';
import 'package:bike_rental/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TileItem extends StatelessWidget {
  final List obj;
  const TileItem({super.key, required this.obj});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: Dimensions.screenWidth * .5,
      height: Dimensions.screenHeight * .2,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Image.asset(
              obj[0],
              height: 200,
              width: 600,
              fit: BoxFit.contain,
            ),
            Positioned(
              bottom: 25,
              child: Column(
                children: [
                  Text(
                    obj[1],
                    style: GoogleFonts.ptSans().copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    obj[2],
                    style: GoogleFonts.ptSans().copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      obj[4],
                      style: GoogleFonts.montserrat().copyWith(
                          color: AppColors.orange, fontWeight: FontWeight.bold),
                    ),
                    Text("₹/week",
                        style: GoogleFonts.montserrat().copyWith(
                            color: AppColors.orange,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
            Positioned(
                bottom: 0,
                right: 5,
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    Text(obj[3])
                  ],
                )),
            Positioned(
              right: 8,
              top: 10,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VerticalTileItem extends StatelessWidget {
  final List obj;
  const VerticalTileItem({super.key, required this.obj});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: Dimensions.screenWidth,
      height: Dimensions.screenHeight * .15,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(10)),
      child: Stack(children: [
        Image.asset(
          obj[0],
          height: 300,
          width: 180,
          fit: BoxFit.contain,
        ),
        Positioned(
          top: 3.0.hp,
          left: 42.0.wp,
          child: Column(
            children: [
              Text(
                obj[1],
                style: GoogleFonts.ptSans().copyWith(
                  color: Colors.grey,
                ),
              ),
              Text(
                obj[2],
                style: GoogleFonts.ptSans()
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 3.0.hp,
            right: 8.0.wp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  obj[4],
                  style: GoogleFonts.montserrat().copyWith(
                      color: AppColors.orange, fontWeight: FontWeight.bold),
                ),
                Text("₹/week",
                    style: GoogleFonts.montserrat().copyWith(
                        color: AppColors.orange, fontWeight: FontWeight.bold)),
              ],
            )),
        Positioned(
            bottom: 3.0.hp,
            left: 42.0.wp,
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
                Text(obj[3])
              ],
            )),
        Positioned(
          right: 8,
          top: 0,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        )
      ]),
    );
  }
}
