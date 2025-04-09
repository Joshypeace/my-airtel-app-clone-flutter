import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      backgroundColor:const Color(0xFF424242),
      child: ListView(
        children:  [
          Container(
            height: 55,
            decoration: const BoxDecoration(
              color:  Color(0xFF2E2E2E),
            ),
            child: const Row(
              children: [
                Icon(Icons.person_pin,color: Colors.white,size: 50,),
                SizedBox(width: 14,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('985875835',style: TextStyle(color: Colors.white),),
                    Text('AirtelTV',style: TextStyle(color: Colors.white),),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
          const ListTile(
            leading: Icon(Icons.add_circle, color: Colors.white,),
            title: Text('Watchlist', style: TextStyle(color: Colors.white),),
          ),
          const ListTile(
            leading: Icon(Icons.restore_page_sharp, color: Colors.white,),
            title: Text('Explore Languages', style: TextStyle(color: Colors.white),),
          ),
          const ListTile(
            leading: Icon(Icons.masks, color: Colors.white,),
            title: Text('Explore Genres', style: TextStyle(color: Colors.white),),
          ),
          const ListTile(
            leading: Icon(Icons.settings, color: Colors.white,),
            title: Text('Settings', style: TextStyle(color: Colors.white),),
          ),
          const ListTile(
            leading: Icon(Icons.help, color: Colors.white,),
            title: Text('Help and Feedback', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
