import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mor_chhattisgarh/misc/colors.dart';
import 'package:mor_chhattisgarh/widgets/app_large_text.dart';
import 'package:mor_chhattisgarh/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  List<Widget> icons = [
    Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 146, 63, 112)
            .withOpacity(0.2), // Set the background color to yellow
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius for rounded corners
      ),
      padding: EdgeInsets.all(
          8.0), // Set padding to create space between the icon and the container
      child: Icon(
        Icons.wine_bar_rounded,
        size: 50,
        color: Color.fromARGB(255, 116, 13, 47),
      ),
    ),
    Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color:
            Colors.amber.withOpacity(0.2), // Set the background color to yellow
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius for rounded corners
      ),
      padding: EdgeInsets.all(
          8.0), // Set padding to create space between the icon and the container
      child: Icon(
        Icons.beach_access,
        size: 50,
        color: Colors.amber,
      ),
    ),
    Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 147, 220, 165)
            .withOpacity(0.2), // Set the background color to yellow
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius for rounded corners
      ),
      padding: EdgeInsets.all(
          8.0), // Set padding to create space between the icon and the container
      child: Icon(
        Icons.two_wheeler_rounded,
        size: 50,
        color: Color.fromARGB(255, 50, 120, 43),
      ),
    ),
    Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent
            .withOpacity(0.2), // Set the background color to yellow
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius for rounded corners
      ),
      padding: EdgeInsets.all(
          8.0), // Set padding to create space between the icon and the container
      child: Icon(
        Icons.skateboarding_outlined,
        size: 50,
        color: Colors.lightBlueAccent,
      ),
    ),
    Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 199, 147, 241)
            .withOpacity(0.2), // Set the background color to yellow
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius for rounded corners
      ),
      padding: EdgeInsets.all(
          8.0), // Set padding to create space between the icon and the container
      child: Icon(
        Icons.surfing_outlined,
        size: 50,
        color: Color.fromARGB(255, 130, 55, 216),
      ),
    ),
  ];

  List iconNames = [
    "Bar",
    "Beach",
    "Bike Ride",
    "Skating",
    "Surfing",
  ];

  List images = ["temple.png", "tirathgarh.png", "tribal.png"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //menu text
            Container(
              padding: const EdgeInsets.only(top: 60, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black54,
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    /* decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.5)), */
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("img/logo.png"), fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //discover text
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(text: "Discover"),
            ),
            SizedBox(
              height: 20,
            ),
            //tab bar
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 20, right: 20),
                    controller: _tabController,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator:
                        CircleTabIndicator(color: AppColor.cyan700, radius: 4),
                    tabs: [
                      Tab(
                        text: "Places",
                      ),
                      Tab(
                        text: "Distance",
                      ),
                      Tab(
                        text: "NearBy Hotels",
                      )
                    ]),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    //itemCount: 3,
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("img/${images[index]}"),
                              //image: AssetImage("img/tribal.png"),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                  Text("Hi"),
                  Text("There"),
                  //Text("Bye"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: "Explore more",
                    size: 22,
                  ),
                  AppText(
                    text: "See all",
                    color: AppColor.textColor1,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: [
                          icons[index],
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: AppText(
                              text: iconNames[index],
                              color: AppColor.textColor2,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
//old 