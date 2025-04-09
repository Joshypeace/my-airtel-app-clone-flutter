import 'package:flutter/material.dart';
import 'package:my_airtel_app/screens/home_page.dart';
import 'package:my_airtel_app/screens/navigation_home_page.dart';


class BuyBundles extends StatefulWidget {
  const BuyBundles({super.key});

  @override
  State<BuyBundles> createState() => _BuyBundlesState();
}

class _BuyBundlesState extends State<BuyBundles> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 6,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: GestureDetector(onTap:(){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=> const NavigationHomePage()));
          }, child: const Icon(Icons.arrow_back, color: Colors.white,)),
          title: const Text('Buy Bundles', style: TextStyle(
            color: Colors.white
          ),),
        ),
        body: Column(
          children: [
            Container(
              decoration:const BoxDecoration(
                color: Colors.white,
              ),
              child: TabBar(

                isScrollable: true,
                indicatorColor: Colors.red,
                labelColor: Colors.red,
                tabAlignment: TabAlignment.start,
                labelStyle: const TextStyle(fontSize: 12),
                unselectedLabelStyle: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 12,
                ),
                tabs: [
                  Tab(
                    icon: Icon(Icons.account_box_outlined,color: Colors.black.withOpacity(0.6)),
                    text: 'Best offers for you',
                  ),
                  Tab(
                    icon: Icon(Icons.wifi,color: Colors.black.withOpacity(0.6)),
                    text: 'PaNet MoFaya',
                  ),
                  Tab(
                    icon: Icon(Icons.mic_outlined,color: Colors.black.withOpacity(0.6)),
                    text: 'Chezani Voice',
                  ),
                  Tab(
                    icon: Icon(Icons.wifi,color: Colors.black.withOpacity(0.6)),
                    text: 'Data',
                  ),
                  Tab(
                    icon: Icon(Icons.mail_outline_outlined,color: Colors.black.withOpacity(0.6)),
                    text: 'SMS',
                  ),
                  Tab(
                    icon: Icon(Icons.phonelink_setup,color: Colors.black.withOpacity(0.6)),
                    text: 'Roaming',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
