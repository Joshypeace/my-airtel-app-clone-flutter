import 'package:flutter/material.dart';
import 'package:my_airtel_app/components/image_row.dart';
import 'package:my_airtel_app/components/side_bar.dart';
import 'package:my_airtel_app/screens/navigation_home_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AirtelTv extends StatefulWidget {
  const AirtelTv({super.key});

  @override
  State<AirtelTv> createState() => _AirtelMoneyState();
}

class _AirtelMoneyState extends State<AirtelTv> {

  List<String> movieList = [
    'assets/posters/mbc.jpg',
    'assets/posters/m3.jpg',
    'assets/posters/m12.jpg',
    'assets/posters/m19.jpg',
    'assets/posters/m20.jpg',
  ];

  List<String> moviePoster = [
    'assets/posters/m1.jpg',
    'assets/posters/m2.jpg',
    'assets/posters/m3.jpg',
    'assets/posters/m4.jpg',
    'assets/posters/m5.jpg',
    'assets/posters/m6.jpg',
    'assets/posters/m7.jpg',
    'assets/posters/m8.jpg',
    'assets/posters/m9.jpg',
    'assets/posters/m10.jpg',
    'assets/posters/m11.jpg',
    'assets/posters/m12.jpg',
    'assets/posters/m13.jpg',
    'assets/posters/m14.jpg',
    'assets/posters/m15.jpg',
  ];
  List<String> moviePosterSec = [
    'assets/posters/m16.jpg',
    'assets/posters/m17.jpg',
    'assets/posters/m18.jpg',
    'assets/posters/m19.jpg',
    'assets/posters/m20.jpg',
    'assets/posters/m21.jpg',
    'assets/posters/m22.jpg',
    'assets/posters/m23.jpg',
    'assets/posters/m24.jpg',
    'assets/posters/m25.jpg',
    'assets/posters/m9.jpg',
    'assets/posters/m10.jpg',
    'assets/posters/m11.jpg',
    'assets/posters/m12.jpg',
    'assets/posters/m13.jpg',
  ];



  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      drawer: const SideBar(),
      backgroundColor: Colors.black,
      bottomNavigationBar: NavigationBar(
        backgroundColor:const Color(0xFF2E2E2E),
        indicatorColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations:  [
          const NavigationDestination(
              icon: Icon(Icons.star_border,color: Colors.grey,),
              label: 'Featured',
              selectedIcon: Icon(Icons.star,color: Colors.white,),
          ),
          const NavigationDestination(
              icon: Icon(Icons.tv,color: Colors.grey,),
              label: 'Shows',
            selectedIcon: Icon(Icons.tv,color: Colors.white,),

          ),
          NavigationDestination(
              icon: Image.asset('assets/images/voice.png'),
              label: '',
          ),
          const NavigationDestination(
              icon: Icon(Icons.movie_creation_outlined,color: Colors.grey,),
              label: 'Movies',
            selectedIcon: Icon(Icons.movie_creation,color: Colors.white,),

          ),
          const NavigationDestination(
              icon: Icon(Icons.satellite_alt_outlined,color: Colors.grey,),
              label: 'Live Tv',
            selectedIcon: Icon(Icons.satellite_alt,color: Colors.white,),

          ),
        ],
      ),
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:const EdgeInsets.symmetric(horizontal: 10.0),
                height: 55,
                decoration: const BoxDecoration(
                 color:  Color(0xFF2E2E2E),
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => const NavigationHomePage()));
                                },
                                child: const Icon(Icons.arrow_back, color: Colors.white,)),
          
                            SizedBox(width:screenWidth * 0.03 ,),
          
                            Builder(
                              builder: (context) {
                                return GestureDetector(onTap:(){
                                  Scaffold.of(context).openDrawer();
                                },
                                    child: const Icon(Icons.density_medium_sharp, color: Colors.white,));
                              }
                            ),
          
                            Image.asset('assets/images/tvpn.png',width: 50,height: 50,),
          
                            const Text('airtelTV', style: TextStyle(
                                color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
                          ],
                        )
                      ],
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search,color: Colors.white,)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.01,),
                Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: CarouselSlider.builder(
                itemCount: movieList.length,
                itemBuilder: (context, index, realIndex) {
                  return Image.asset(
                    movieList[index],
                    fit: BoxFit.contain,
                    width: screenWidth,
                  );
                },
                options: CarouselOptions(
                  viewportFraction: 1.0,
                  height: screenHeight * 0.3,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 8),
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                            ),
                          ),
                          Positioned(
                            bottom: 5.0,
                            right: 25.0,
                            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: movieList.map((url) {
                  int index = movieList.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Colors.grey
                          : Colors.grey.withOpacity(0.4),
                    ),
                  );
                }).toList(),
                            ),
                          ),
                        ]
                ),
              SizedBox(height: screenHeight * 0.01,),
                Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top 10',
                          style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('More',
                          style: TextStyle(color: Colors.red, fontSize: 20),),
                      ],
                    ),
                  ),
                  ScrollableImageRow(imagePaths: moviePoster),
                ],
              ),
              SizedBox(height: screenHeight * 0.01,),
                Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Must See Movies',
                          style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('More',
                          style: TextStyle(color: Colors.red, fontSize: 20),),
                      ],
                    ),
                  ),
                  ScrollableImageRow(imagePaths: moviePosterSec),
                ],
              ),
              SizedBox(height: screenHeight * 0.01,),
                Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('The Voice of Africa',
                          style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('More',
                          style: TextStyle(color: Colors.red, fontSize: 20),),
                      ],
                    ),
                  ),
                  ScrollableImageRow(imagePaths: moviePoster),
                ],
              ),
              SizedBox(height: screenHeight * 0.01,),
                Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Hit Series',
                          style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('More',
                          style: TextStyle(color: Colors.red, fontSize: 20),),
                      ],
                    ),
                  ),
                  ScrollableImageRow(imagePaths: moviePosterSec),
                ],
              ),
              SizedBox(height: screenHeight * 0.01,),
                Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('New',
                          style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('More',
                          style: TextStyle(color: Colors.red, fontSize: 20),),
                      ],
                    ),
                  ),
                  ScrollableImageRow(imagePaths: moviePoster),
                ],
              ),
              SizedBox(height: screenHeight * 0.01,),
                Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Live Tv',
                          style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('More',
                          style: TextStyle(color: Colors.red, fontSize: 20),),
                      ],
                    ),
                  ),
                  ScrollableImageRow(imagePaths: moviePosterSec),
                ],
              ),
              SizedBox(height: screenHeight * 0.01,),
                Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Combat Sport',
                          style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('More',
                          style: TextStyle(color: Colors.red, fontSize: 20),),
                      ],
                    ),
                  ),
                  ScrollableImageRow(imagePaths: moviePoster),
                ],
              ),
          
            ],
          ),
        ),
      ),

    );
  }
}


