import 'package:flutter/material.dart';
import '../components/container_button.dart';
import '../components/icon_button.dart';


class AirtelMoney extends StatefulWidget {
  const AirtelMoney({super.key});

  @override
  State<AirtelMoney> createState() => _AirtelMoneyState();
}

class _AirtelMoneyState extends State<AirtelMoney> {

  List<ContainerButton> containerButton = [

    ContainerButton(
        buttonName: 'Bank to \nWallet',
        myIcon: Icons.add_circle,
    ),
    ContainerButton(
        buttonName: 'Withdraw \ncash',
        myIcon: Icons.remove_circle
    ),


  ];

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
        myIcon: Icons.handshake_outlined,
        label: 'Airtel\nMoney\nReversal',
        myColor: Colors.black
    ),

  ];



  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return   Scaffold(
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
        actions: const <Widget>[
          Icon(
            Icons.qr_code_sharp,
            color: Colors.white,
          ),
          SizedBox(width: 5,),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children:<Widget> [
            Stack(
              children: [
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
                      child: Container(
                        width: screenWidth * 0.95,
                        height: screenHeight * 0.24,
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
        
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'joshua | 985975835',
                                      style: TextStyle(fontSize: screenWidth * 0.035),
                                    ),
                                    SizedBox(height: screenHeight * 0.005,),
                                    Text(
                                      'Airtel Money Balance',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.035,
                                          fontWeight: FontWeight.bold
                                      ),
        
                                    )
                                  ],
                                ),
                                Center(
                                  child:GestureDetector(
                                    onTap: (){},
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: Colors.red.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: const Row(
                                        children: [
                                          Icon(Icons.qr_code,color: Colors.red,),
                                          Text('My QR',style: TextStyle(fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    ),
                                  )
                                ),
        
                              ],
                            ),
                            Divider(color: Colors.black.withOpacity(0.1),),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'MWK',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      SizedBox(width: screenWidth * 0.02,),
        
                                      Text(
                                        'XXX,XXX',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: screenWidth * 0.05
                                        ),
        
                                      ),
                                      SizedBox(width: screenWidth * 0.03,),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20.0),
                                        child: Container(
                                          width: screenWidth * 0.08,
                                          height: screenHeight * 0.038,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(100)
                                          ),
                                          child: const Icon(Icons.remove_red_eye_sharp,
                                            color: Colors.white,),
                                        ),
                                      ),
        
                                    ],
                                  )
        
                                ],
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MyContainerButton(
                                    myContainerButton: containerButton[0],
                                    onTap: (){
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
                    )
                  ],
                ),
        
              ],
            ),
            SizedBox(height: screenHeight * 0.02,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: screenWidth * 0.95,
                height: screenHeight * 0.20,
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
                child:   Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
                      child: Row(
                        children: [
                          Text('Transfer & Cashout',
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ),)
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyButton(airtelButton: bottomSheetButton[4]),
                        MyButton(airtelButton: bottomSheetButton[5]),
                        MyButton(airtelButton: bottomSheetButton[6]),
                        MyButton(airtelButton: bottomSheetButton[11]),
        
                      ],
        
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02,),
        
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: screenWidth * 0.95,
                height: screenHeight * 0.28,
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
                child:   Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
                      child: Row(
                        children: [
                          Text('Recharge and Bill Payments',
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ),)
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyButton(airtelButton: appButton[1]),
                        MyButton(airtelButton: appButton[2]),
                        MyButton(airtelButton: appButton[6]),
                        MyButton(airtelButton: appButton[7]),
        
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.04,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyButton(airtelButton: bottomSheetButton[8]),
                        MyButton(airtelButton: bottomSheetButton[0]),
                        MyButton(airtelButton: bottomSheetButton[9]),
                      ],
                    )
                  ],
                ),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          const Text('My \n Transactions',style: TextStyle(color: Colors.white),),
                          SizedBox(width: screenWidth * 0.05,),
                          Icon(Icons.query_stats, color: Colors.white,size: screenWidth * 0.1,)
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





