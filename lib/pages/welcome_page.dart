import 'package:flutter/material.dart';
import 'package:mor_chhattisgarh/misc/colors.dart';
import 'package:mor_chhattisgarh/pages/detail_page.dart';
import 'package:mor_chhattisgarh/widgets/app_large_text.dart';
import 'package:mor_chhattisgarh/widgets/app_text.dart';
import 'package:mor_chhattisgarh/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "waterfall.png",
    "pilgrimage.png",
    "metal-crafts.png",
    "mysterious-cg.png",
    "cave.png",
    "food.png",
  ];

  List text = [
    "Let the Majestic waterfalls of Mor Chhattisgarh whisper their secrets to your soul.",
    "Chhattisgarh's sacred journey, where devotion meets tranquility among ancient temples.",
    "Crafting Excellence in Bastar: Where Tradition Forges Art, Metal Speaks Stories, and Mastery Shapes Heritage.",
    "Chhattisgarh's Thrill Quest: Conquer Nature's Challenges, Unearth Ancient Marvels, and Dive into an Adventure-rich Legacy!",
    "Dive into the Heart of the Earth: Chhattisgarh's Caves Await Your Discovery!",
    "Savor Chhattisgarh: A Culinary Odyssey Where Fara Beckons with Tradition, and Every Bite Unwraps the Essence of Local Delights!",
  ];

  List appTexts = [
    "Waterfalls",
    "Chattisgarh Pilgrimage",
    "Metal Crafts",
    "Exciting Adventure",
    "Explore Caves",
    "Food Journey",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/" + images[index]),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 250, bottom: 20),
                          child: Row(
                            children: List.generate(6, (indexDots) {
                              return Container(
                                margin: EdgeInsets.only(right: 2),
                                width: index == indexDots ? 25 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: index == indexDots
                                      ? AppColor.cyan700
                                      : AppColor.cyan700.withOpacity(0.3),
                                ),
                              );
                            }),
                          ),
                        ),
                        AppLargeText(
                          text: "Trips",
                        ),
                        AppText(
                          text: appTexts[index],
                          size: 35,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text: text[index],
                            color: AppColor.textColor2,
                            size: 16,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(),
                              ),
                            );
                          },
                          child: ResponsiveButton(
                            width: 120,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
//old