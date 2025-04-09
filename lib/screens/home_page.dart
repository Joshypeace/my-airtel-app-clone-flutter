import 'package:flutter/material.dart';
import 'package:my_airtel_app/components/icon_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_airtel_app/components/container_button.dart';
import 'package:my_airtel_app/screens/buy_bundles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<MyIconButton> appButton = [

    MyIconButton(
        myIcon: Icons.star_border_sharp,
        label: 'My Favourite',
        myColor: Colors.red
    ),
    MyIconButton(
        myIcon: Icons.phone_android_outlined,
        label: 'Recharge',
        myColor: Colors.black
    ),
    MyIconButton(
        myIcon: Icons.library_books_rounded,
        label: 'Buy Bundles',
        myColor: Colors.red
    ),
    MyIconButton(
        myIcon: Icons.monetization_on_outlined,
        label: 'Send Money',
        myColor: Colors.black
    ),
    MyIconButton(
        myIcon: Icons.keyboard_hide_outlined,
        label: 'Withdraw \n cash',
        myColor: Colors.red
    ),
    MyIconButton(
        myIcon: Icons.house_siding,
        label: 'Bank to\n Wallet',
        myColor: Colors.black
    ),
    MyIconButton(
        myIcon: Icons.sticky_note_2_outlined,
        label: 'Pay Bills',
        myColor: Colors.red
    ),
    MyIconButton(
        myIcon: Icons.qr_code_scanner_outlined,
        label: 'Scan & Pay',
        myColor: Colors.black
    ),

  ];


  List<MyIconButton> bottomSheetButton = [

    MyIconButton(
        myIcon: Icons.star_border_sharp,
        label: 'My Favourite',
        myColor: Colors.red
    ),
    MyIconButton(
        myIcon: Icons.phone_android_outlined,
        label: 'Recharge',
        myColor: Colors.black
    ),
    MyIconButton(
        myIcon: Icons.library_books_rounded,
        label: 'Buy Bundles',
        myColor: Colors.red
    ),
    MyIconButton(
        myIcon: Icons.monetization_on_outlined,
        label: 'Send Money',
        myColor: Colors.black
    ),
    MyIconButton(
        myIcon: Icons.keyboard_hide_outlined,
        label: 'Withdraw \n cash',
        myColor: Colors.red
    ),
    MyIconButton(
        myIcon: Icons.house_siding,
        label: 'Bank to\n Wallet',
        myColor: Colors.black
    ),
    MyIconButton(
        myIcon: Icons.sticky_note_2_outlined,
        label: 'Pay Bills',
        myColor: Colors.red
    ),
    MyIconButton(
        myIcon: Icons.qr_code_scanner_outlined,
        label: 'Scan & Pay',
        myColor: Colors.black
    ),
    MyIconButton(
        myIcon: Icons.shopping_cart_outlined,
        label: 'Goods & \n Services',
        myColor: Colors.red
    ),
    MyIconButton(
        myIcon: Icons.person_add_alt_1_outlined,
        label: 'Refer & Earn',
        myColor: Colors.black
    ),
    MyIconButton(
        myIcon: Icons.handshake_outlined,
        label: 'SHARE ME2U',
        myColor: Colors.red
    ),
    MyIconButton(
        myIcon: Icons.router_outlined,
        label: 'Airtel 4G WiFi',
        myColor: Colors.black
    ),

  ];

  final List<String> imgList = [
    'assets/images/airtel_image1.png',
    'assets/images/airtel_image2.png',
    'assets/images/Chezani-Banner.png',
    'assets/images/HBB-SmartBox.png',
    'assets/images/MAA_Social.png',
    'assets/images/PocketWiFi.png',
    'assets/images/Tambala-Banner.png',
    'assets/images/Temwani-home.jpg',
  ];

  List<ContainerButton> containerButton = [

    ContainerButton(
        buttonName: 'Buy Bundles',
        myIcon: Icons.library_books_rounded,

    ),
    ContainerButton(
        buttonName: 'Self Recharge',
        myIcon: Icons.electric_bolt_outlined,
    ),


  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading:Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset(
              'assets/icons/airtel_appbar.png'
          ),
        ),
        leadingWidth: screenWidth * 0.12,
        title: Text(
          'airtel',
          style: TextStyle(
            color: Colors.white,
            fontSize: screenWidth * 0.06,
            fontWeight: FontWeight.w600
           ),
        ),
        titleSpacing: 0.0,
        actions:  <Widget>[
              GestureDetector(
                onTap: (){},
                child: const Icon(
                    Icons.qr_code_sharp,
                    color: Colors.white,
                ),
              ),
          const SizedBox(width: 5,),
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                ),
          ),
            ],
          ),
//END OF APP BAR
         body:
         SingleChildScrollView(
           child: Column(
             children: [
               Stack(
                 children:<Widget>[
                   SizedBox(
                     height: 55,
                     child: Container(
                       decoration: const BoxDecoration(
                         color: Colors.red,
                       ),
                     ),
                   ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: screenWidth * 0.95,
                          height: screenHeight * 0.245,
                          padding:const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow:  [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius:5.0,
                                  offset: Offset.zero
                                )
                              ]
                              ),
                          child:  Column(
                               children: [
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text(
                                             'joshua chilapondwa',
                                           style: TextStyle(fontSize: screenWidth * 0.035),
                                         ),
                                         Text(
                                             'Prepaid - 985875835',
                                           style: TextStyle(
                                               fontSize: screenWidth * 0.035,
                                               fontWeight: FontWeight.bold
                                           ),

                                         )
                                       ],
                                     ),
                                     Center(
                                       child: GestureDetector(
                                         onTap: (){},
                                         child: Text(
                                             'Manage Account',
                                           style: TextStyle(
                                               fontSize: screenWidth * 0.032,
                                             color: Colors.blueAccent
                                           ),

                                         ),
                                       ),
                                     )
                                   ],
                                 ),
                                 Divider(
                                   color: Colors.black.withOpacity(0.1),
                                 ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                      Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text('0',style:
                                         TextStyle(fontWeight: FontWeight.bold, fontSize: screenWidth * 0.045 ),
                                         ),
                                         Text('MWK',
                                         style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: screenWidth * 0.035,
                                             color: Colors.red
                                         ),),
                                         Text(
                                             'Airtime Balance',
                                           style: TextStyle(
                                               fontSize: screenWidth * 0.03,
                                               color: Colors.black.withOpacity(0.5)

                                           ),
                                         )
                                       ],
                                     ),
                                       SizedBox(
                                         height: screenHeight * 0.07,
                                         child: VerticalDivider(
                                           color: Colors.black.withOpacity(0.2),
                                         ),
                                       ),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text('0.00',style:
                                         TextStyle(fontWeight: FontWeight.bold, fontSize: screenWidth * 0.045),
                                         ),
                                         Text('MWK',
                                         style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: screenWidth * 0.035,
                                             color: Colors.red
                                         ),),
                                         Text(
                                             'Voice Balance',
                                           style: TextStyle(
                                               fontSize: screenWidth * 0.03,
                                               color: Colors.black.withOpacity(0.5)

                                           ),
                                         )
                                       ],
                                     ),
                                     SizedBox(
                                       height: screenHeight * 0.07,
                                       child: VerticalDivider(
                                         color: Colors.black.withOpacity(0.2),
                                       ),
                                     ),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text('6.99',style:
                                         TextStyle(fontWeight: FontWeight.bold, fontSize: screenWidth * 0.045 ),
                                         ),
                                         Text('GB',
                                         style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: screenWidth * 0.035,
                                             color: Colors.red
                                         ),),
                                         Text(
                                             'Data Balance',
                                           style: TextStyle(
                                               fontSize: screenWidth * 0.03,
                                               color: Colors.black.withOpacity(0.5)
                                           ),
                                         )
                                       ],
                                     ),
                                   ],
                                 ),
                                 Divider(
                                   color: Colors.black.withOpacity(0.1),
                                 ),
                                 SizedBox(height: screenHeight * 0.01,),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     MyContainerButton(
                                         myContainerButton: containerButton[0],
                                         onTap: (){
                                           Navigator.push(context,
                                               MaterialPageRoute(builder: (context) => const BuyBundles()));
                                         }
                                     ),
                                     MyContainerButton(
                                         myContainerButton: containerButton[1],
                                         onTap: (){}
                                     )
                                   ],
                                 )
                               ],
                          ),
                          ),
                        ),
                       SizedBox(height:screenHeight * 0.02,),

                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: screenWidth * 0.95,
                            height: screenHeight * 0.085,
                            padding:const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow:  [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius:10.0,
                                      offset: Offset.zero
                                  )
                                ]
                            ),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.account_balance_wallet,color: Colors.red,),
                                      SizedBox(width: screenWidth * 0.02,),

                                      const Text(
                                        'Airtel Money',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                   Row(
                                    children: [
                                      const Text(
                                        'MWK',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.02,),
                                      
                                      const Text(
                                        'XXXXXX',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                        ),

                                      )
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Container(
                                  width: screenWidth * 0.08,
                                  height: screenHeight * 0.04,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                  child: const Icon(Icons.remove_red_eye_sharp,
                                    color: Colors.white,size: 18,),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                   _bubble(screenWidth),
                   _chainDivider(screenWidth),
                   _circleLinkers(screenWidth),
                 ]
               ),
               //END OF STACK CONTENT

               SizedBox(height: screenHeight * 0.05,),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 12.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                      const Text(
                         'Quick Actions',
                       style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                     ),
                     GestureDetector(
                       onTap: (){
                         showModalBottomSheet(context: context,
                             showDragHandle: true,
                             backgroundColor: Colors.white,
                             builder:((context){
                             return SizedBox(
                                  height: screenHeight * 0.37,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                        child: Column(
                                          children: [
                                            const Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    'Quick Actions',
                                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: screenHeight * 0.02,),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                MyButton(airtelButton: bottomSheetButton[0]),
                                                MyButton(airtelButton: bottomSheetButton[1]),
                                                MyButton(airtelButton: bottomSheetButton[2]),
                                                MyButton(airtelButton: bottomSheetButton[3]),

                                              ],
                                            ),
                                            SizedBox(height: screenHeight * 0.05,),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,

                                              children: <Widget>[
                                                MyButton(airtelButton: bottomSheetButton[4]),
                                                MyButton(airtelButton: bottomSheetButton[5]),
                                                MyButton(airtelButton: bottomSheetButton[6]),
                                                MyButton(airtelButton: bottomSheetButton[7]),
                                              ],
                                            ),
                                            SizedBox(height: screenHeight * 0.02,),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,

                                              children: <Widget>[
                                                MyButton(airtelButton: bottomSheetButton[8]),
                                                MyButton(airtelButton: bottomSheetButton[9]),
                                                MyButton(airtelButton: bottomSheetButton[10]),
                                                MyButton(airtelButton: bottomSheetButton[11]),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                             );

                         }));


                       },
                       child: const Text(
                           'View All',
                         style: TextStyle(color: Colors.blueAccent),
                       ),
                     )
                   ],
                 ),
               ),
               SizedBox(height: screenHeight * 0.05,),

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
                 child: Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: <Widget>[
                         MyButton(airtelButton: appButton[0]),
                         MyButton(airtelButton: appButton[1]),
                         MyButton(airtelButton: appButton[2]),
                         MyButton(airtelButton: appButton[3]),

                       ],
                     ),
                     SizedBox(height: screenHeight * 0.02,),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,

                       children: <Widget>[
                         MyButton(airtelButton: appButton[4]),
                         MyButton(airtelButton: appButton[5]),
                         MyButton(airtelButton: appButton[6]),
                         MyButton(airtelButton: appButton[7]),
                       ],
                     )
                   ],
                 ),
               ),
               SizedBox(height: screenHeight * 0.02,),
               Center(
                 child: Column(
                   children: [
                     SizedBox(
                       width: double.infinity,  // Make sure the container takes the available width
                       child: CarouselSlider(
                         options: CarouselOptions(
                           height: 122.0, // Set height for the carousel
                           autoPlay: true,  // Automatically play the carousel
                           aspectRatio: 16 / 9,  // Aspect ratio of the carousel
                           viewportFraction: 0.9,  // Controls the fraction of the carousel shown
                         ),
                         items: imgList.map((item) {
                           return Container(
                             margin:const EdgeInsets.all(10.0),  // Add margin between images
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(5.0),
                               color: Colors.grey.shade200,
                                 boxShadow:  [
                                   BoxShadow(
                                       color: Colors.black.withOpacity(0.2),
                                       blurRadius:5.0,
                                       offset: Offset.zero
                                   )
                                 ]
                             ),
                             child: ClipRRect(
                               borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                               child: Image.asset(
                                 item,
                                 fit: BoxFit.contain,
                                 width: 1000.0,
                               ),
                             ),
                           );
                         }).toList(),
                       ),
                     ),
                   ],
                 ),
               ),
               SizedBox(height: screenHeight * 0.02,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 12.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     const Text(
                       'BEST OFFERS',
                       style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                     ),
                     GestureDetector(
                       onTap: (){},
                       child: const Text(
                         'All Offers',
                         style: TextStyle(color: Colors.blueAccent),
                       ),
                     )
                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: Row(
                   children: [
                     Column(
                       children: [
                         Container(
                           width: screenWidth * 0.09,
                           height: screenHeight * 0.04 ,
                           decoration: BoxDecoration(
                               color: Colors.deepPurple,
                               borderRadius: BorderRadius.circular(100)
                           ),
                           child:  Icon(Icons.label_rounded,
                             color: Colors.white,
                           size: screenWidth * 0.045,),
                         ),
                       ],
                     ),
                     const SizedBox(width: 5,),
                      const Row(
                       children: [
                         Column(
                           children: [
                             Text('34 minutes'),
                             Text('Validity 7 Day',
                             style: TextStyle(fontSize: 10),)
                           ],
                         ),
                       ],
                     ),
                     SizedBox(width: screenWidth * 0.4,),
                     Column(
                       children: [
                         Row(
                           children: [
                             const Text(
                               'MWK',
                               style: TextStyle(
                                 color: Colors.red,
                               ),

                             ),
                             SizedBox(width: screenWidth * 0.02),
                             const Text(
                               '500',
                               style: TextStyle(
                                 color: Colors.black,
                               ),

                             ),
                           ],
                         )
                       ],
                     )
                   ],
                 ),
               ),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Card(
                       color: Colors.blue,
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: <Widget>[
                             const Text('Manage Your \n Favourites',style: TextStyle(color: Colors.white),),
                             SizedBox(width: screenWidth * 0.05,),
                             Icon(Icons.star, color: Colors.white,size: screenWidth * 0.1,)
                           ],
                         ),
                       ),
                     ),
                     Card(
                       color: Colors.lightGreen,
                       child: Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: <Widget>[
                             const Text('Watch Live Tv',style: TextStyle(color: Colors.white),),
                             SizedBox(width: screenWidth * 0.05,),
                             Icon(Icons.tv, color: Colors.white,size: screenWidth * 0.1,)
                           ],
                         ),
                       ),
                     )
                   ],
                 ),
               )
             ],
           ),
         ),
    );
  }
}

_bubble(screeWidth){
  return  Positioned(
    top: 170.0,
    left: screeWidth * 0.1,
    right: screeWidth * 0.1,
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: screeWidth * 0.1,
            decoration:  BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20)
            ),
          ),
          Container(
            width: screeWidth * 0.03,
            decoration:  BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20)
            ),
          ),
        ],
      ),
  );
}

_chainDivider(screenWidth) {
  return Positioned(
    top: 195.0,
    left: screenWidth * 0.1,
    right: screenWidth * 0.1,
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 10,
          height: 18,
          child: VerticalDivider(
            color: Color.fromARGB(200, 158, 158, 158),
            thickness: 1,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 10,
          height: 18,
          child: VerticalDivider(
            color: Color.fromARGB(200, 158, 158, 158),
            thickness: 1,
          ),
        ),
      ],
    ),
  );
}

_circleLinkers(screenWidth) {
  return Positioned(
    top: 212.0,
    left: screenWidth * 0.1,
    right: screenWidth * 0.1,
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.circle_outlined,
          color: Color.fromARGB(190, 71, 71, 71),
          size: 6,
          weight: 10,
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.circle_outlined,
          color: Color.fromARGB(190, 71, 71, 71),
          size: 6,
        ),
      ],
    ),
  );
}

