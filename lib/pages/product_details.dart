import 'package:bike_rental/utils/app_colors.dart';
import 'package:bike_rental/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatelessWidget {
  final List obj;
  const ProductDetails({super.key, required this.obj});

  @override
  Widget build(BuildContext context) {
    String _reviewCount = obj[7];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.back)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  obj[0],
                  height: 300,
                  width: Dimensions.screenWidth,
                  fit: BoxFit.contain,
                ),
                Text(
                  obj[1],
                  style: GoogleFonts.ptSans().copyWith(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                Text(
                  obj[2],
                  style: GoogleFonts.montserrat().copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
                Text(
                  obj[5],
                  style: GoogleFonts.ptSans().copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 100,
                      child: ListView.builder(
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                            );
                          }),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        Text(obj[3]),
                        const Text('reviews'),
                        Text('($_reviewCount)')
                      ],
                    )
                  ],
                ),
                Text(
                  'Specifications',
                  style: GoogleFonts.montserrat().copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white60,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/carengine.png',
                            width: 80,
                            height: 80,
                          ),
                          const Text('Car Engine'),
                          Text(obj[8])
                        ],
                      ),
                    ),
                    Container(
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white60,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'images/machine.png',
                            width: 80,
                            height: 80,
                          ),
                          const Text('Car Engine'),
                          Text(obj[9])
                        ],
                      ),
                    ),
                    Container(
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white60,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.speed,
                            size: 80,
                          ),
                          const Text('Car Engine'),
                          Text(obj[10])
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          obj[4],
                          style: GoogleFonts.montserrat().copyWith(
                              color: AppColors.orange,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ₹/week",
                          style: GoogleFonts.montserrat().copyWith(
                              color: AppColors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.all(10),
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: AppColors.indigo,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Add to cart',
                              style: GoogleFonts.montserrat().copyWith(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
