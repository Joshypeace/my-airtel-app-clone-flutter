
import 'package:flutter/material.dart';

class ContainerButton{

  IconData myIcon;
  String buttonName;

  ContainerButton({ required this.buttonName, required this.myIcon});

}

class MyContainerButton extends StatelessWidget {
  const MyContainerButton({super.key,required this.myContainerButton, required this.onTap});
  final  ContainerButton myContainerButton;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap:onTap,
      child: Container(
           padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 40.0),
           decoration: BoxDecoration(
             color: Colors.red.withOpacity(0.08),
             borderRadius: BorderRadius.circular(5.0)

           ),
           child: Row(
             children: <Widget>[
               Icon(
                 myContainerButton.myIcon,
                 color: Colors.red,
                   size: screenWidth * 0.035

               ),
               Text(
                 myContainerButton.buttonName,
                 style: TextStyle(
                   color: Colors.red,
                   fontWeight: FontWeight.bold,
                   fontSize: screenWidth * 0.0275

                 ),
               )
             ],
           ),
      ),
    );
  }
}
