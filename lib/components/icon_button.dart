import 'package:flutter/material.dart';

class MyIconButton{

  IconData myIcon;
  String label;
  Color myColor;

  MyIconButton({ required this.myIcon, required this.label, required this.myColor });

}

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.airtelButton});
  final MyIconButton airtelButton;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      child:Column(
        children: [
          Icon(
            airtelButton.myIcon,
            color: airtelButton.myColor,
          ),
         const SizedBox(height: 3,),
          Center(
            child: Text(
              airtelButton.label,
              style:  TextStyle(
                  color: Colors.black,
                fontSize: screenWidth * 0.035            ),

            ),
          )
        ],
      ),

    );
  }
}

