import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var images = [
    "assets/images/background.jpg",
    "assets/images/download.jpg",
    "assets/images/floral_frame.png",
    "assets/images/floral_frame_.png",
    "assets/images/Logo.png"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    SizedBox header() {
      return SizedBox(
        height: size.height * 0.25,
        child: Swiper(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/download.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          autoplay: true,
          pagination: const SwiperPagination(
              alignment: Alignment.bottomCenter,
              builder: DotSwiperPaginationBuilder(
                color: Colors.white,
                activeColor: Colors.red,
              )),
          //control:const  SwiperControl(),
        ),
      );
    }

    SizedBox collections() {
      return SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: 80,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        images[index],
                        height: 220,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        child: Center(
                            child: Text(
                      'Modern Collection',
                      style: TextStyle(color: Colors.white),
                    )))
                  ],
                ),
              ),
            );
          },
        ),
      );
    }

    SizedBox recentsProjects() {
      return SizedBox(
        height: size.height * 0.20,
        child: Swiper(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(80),
                          bottomRight: Radius.circular(80)),
                      child: Image.asset(
                        'assets/images/download.jpg',
                        fit: BoxFit.cover,
                        width: 180,
                        height: 150,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Luxury Living Room \n in Manhattan',
                          textAlign: TextAlign.justify,
                          softWrap: true,
                          style: TextStyle(color: Colors.red),
                        ),
                        Text(
                            'we have created a\n message  channel \n using  MethodChannel\n class and used'),
                      ],
                    )
                  ],
                ));
          },
          autoplay: true,
          pagination: const SwiperPagination(
              alignment: Alignment.bottomCenter,
              builder: DotSwiperPaginationBuilder(
                color: Colors.white,
                activeColor: Colors.red,
              )),
          //control:const  SwiperControl(),
        ),
      );
    }

    SizedBox shopToExplore() {
      return SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: 150,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        images[index],
                        width: 200,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        child: Center(
                            child: Text(
                      'Modern Collection',
                      style: TextStyle(color: Colors.white),
                    )))
                  ],
                ),
              ),
            );
          },
        ),
      );
    }

    SizedBox placement() {
      return SizedBox(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: 100,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        images[index],
                        height: 220,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        child: Center(
                            child: Text(
                      'Modern Collection',
                      style: TextStyle(color: Colors.white),
                    )))
                  ],
                ),
              ),
            );
          },
        ),
      );
    }

    SizedBox cardSwiper() {
      return SizedBox(
        height: size.height * 0.25,
        child: Swiper(
          itemBuilder: (context, index) {
            return placement();
          },
          indicatorLayout: PageIndicatorLayout.COLOR,
          itemCount: images.length,
          pagination: const SwiperPagination(),
          control: const SwiperControl(
            color: Colors.amber,
            iconPrevious: Icons.arrow_circle_left_outlined,
            iconNext: Icons.arrow_circle_right_outlined,
          ),
        ),
      );
    }

    return GestureDetector(
      onDoubleTap: () {
        Focus.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  header(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Center(
                        child: Text(
                          'Collections',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  collections(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Center(
                        child: Text(
                          'Recent Projects',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  recentsProjects(),
                  SizedBox(
                    child: Center(
                      child: Text(
                        'Shops TO Explore',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  shopToExplore(),
                  SizedBox(
                    child: Center(
                      child: Text(
                        'Guide for Placement',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  cardSwiper(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
