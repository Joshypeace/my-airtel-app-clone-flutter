import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_airtel_app/screens/home_page.dart';
import 'package:my_airtel_app/screens/navigation_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.red,
    ));
    return MaterialApp(
       home: const NavigationHomePage(),
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         primarySwatch: Colors.red,
         fontFamily: 'Ubuntu',
         navigationBarTheme: NavigationBarThemeData(
           labelTextStyle:WidgetStateProperty.all(
            const TextStyle(color: Colors.grey)
           )
         )
       ),
    );
  }
}
