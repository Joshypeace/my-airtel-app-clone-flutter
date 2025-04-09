import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // don't add
    final screenHeight = MediaQuery.of(context).size.height; // don't add
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child:SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: screenHeight * 0.31,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.greenAccent,
                              Colors.green,
                              Colors.purple,
                              Colors.brown,
                              Colors.deepOrange,
                            ],
                          stops: [0.1,0.25,0.4,0.75,0.95]
            
                        )
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      heightFactor: 1.5,
                      child: Column(
                        children: [
                          Icon(Icons.person_pin,color: Colors.white, size: screenWidth * 0.25,),
                          SizedBox(height: screenHeight * 0.02,),
                          const Text('Joshua', style: TextStyle(color: Colors.white,fontSize: 25),),
                          const Text('0985975835 - PREPAID', style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                        heightFactor: 10,
                        widthFactor: 16,
                        child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,))
            
                  ],
                ),
            const Column(
              children: [
                ListTile(
                  leading: Icon(Icons.schedule_sharp,color: Colors.blue,),
                  title:Text('Airtel Prepaid Services'),
                  trailing: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),

                ),
                ListTile(
                  leading: Icon(Icons.account_balance_wallet,color: Colors.blue,),
                  title:Text('Airtel Money Services'),
                  trailing: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),

                ),
                ListTile(
                  leading: Icon(Icons.tag_sharp,color: Colors.blue,),
                  title:Text('Upgrade to eSIM'),
                ),
                ListTile(
                  leading: Icon(Icons.message_outlined,color: Colors.blue,),
                  title:Text('Notification Box'),
                ),
                ListTile(
                  leading: Icon(Icons.settings,color: Colors.blue,),
                  title:Text('Settings'),
                ),
                ListTile(
                  leading: Icon(Icons.shop,color: Colors.blue,),
                  title:Text('Airtel Shops'),
                ),
                ListTile(
                  leading: Icon(Icons.call_rounded,color: Colors.blue,),
                  title:Text('Help & Support'),
                ),
                ListTile(
                  leading: Icon(Icons.phone_in_talk_rounded,color: Colors.blue,),
                  title:Text('Refer & Earn'),
                ),
                ListTile(
                  leading: Icon(Icons.newspaper_sharp,color: Colors.blue,),
                  title:Text('Terms & Conditions'),
                ),
                ListTile(
                  leading: Icon(Icons.help,color: Colors.blue,),
                  title:Text('About'),
                ),
                ListTile(
                  leading: Icon(Icons.star,color: Colors.blue,),
                  title:Text('Rate'),
                ),
              ],
            ),


              ],
            ),

          )
      )
    );
  }
}
