import 'package:flutter/material.dart';
import 'package:mor_chhattisgarh/misc/colors.dart';
import 'package:mor_chhattisgarh/widgets/app_buttons.dart';
import 'package:mor_chhattisgarh/widgets/app_large_text.dart';
import 'package:mor_chhattisgarh/widgets/app_text.dart';
import 'package:mor_chhattisgarh/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gotStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            height: 920,
            child: Stack(
              children: [
                Positioned(
                    // top: 70,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.maxFinite,
                      height: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("img/chitrakoot.jpg"),
                              fit: BoxFit.cover)),
                    )),
                Positioned(
                    left: 20,
                    top: 50,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 250,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                          color: Colors.white,
                        )
                      ],
                    )),
                Positioned(
                  top: 320,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(
                              text: "Chitrakoot Waterfalls",
                              size: 25,
                              color: Colors.black.withOpacity(0.8),
                            ),
                            AppLargeText(
                              text: "\₹ 250",
                              size: 25,
                              color: AppColor.mainColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColor.mainColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            AppText(
                              text: "Bastar, Chhattisgarh",
                              size: 18,
                              color: AppColor.mainColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Wrap(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  color: index < gotStars
                                      ? AppColor.starColor
                                      : AppColor.textColor2,
                                );
                              }),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AppText(
                              text: "(4.0)",
                              color: AppColor.textColor2,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppLargeText(
                                text: "People",
                                size: 22,
                                color: Colors.black.withOpacity(0.8),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              AppText(
                                text: "Number of people in your group.",
                                size: 18,
                                color: AppColor.mainTextColor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Wrap(
                                children: List.generate(5, (index) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: Container(
                                      child: AppButtons(
                                        size: 50,
                                        color: selectedIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                        backgroundColor: selectedIndex == index
                                            ? Colors.black
                                            : AppColor.buttonBackgroundColor,
                                        borderColor: selectedIndex == index
                                            ? Colors.black
                                            : AppColor.buttonBackgroundColor,
                                        text: (index + 1).toString(),
                                        // isIcon: false,
                                      ),
                                    ),
                                  );
                                }),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              AppLargeText(
                                text: "Description",
                                size: 22,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              AppText(
                                text:
                                    "Chitrakoot Falls, located 38 kilometers west of Jagdalpur in the Bastar district of Chhattisgarh, stands as a natural marvel on the Indravati River. With a majestic 29-meter drop, it is renowned as India's widest waterfall, spanning nearly 300 meters during the monsoon. Affectionately referred to as the Niagara Falls of India, Chitrakote captivates visitors with its breathtaking horseshoe shape.",
                                size: 16,
                                color: AppColor.mainTextColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    left: 20,
                    bottom: 20,
                    right: 20,
                    child: Row(
                      children: [
                        AppButtons(
                          size: 60,
                          color: AppColor.textColor1,
                          backgroundColor: Colors.white,
                          borderColor: AppColor.textColor1,
                          isIcon: true,
                          icon: Icons.favorite_border,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ResponsiveButton(
                          isResponsive: true,
                        )
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}
