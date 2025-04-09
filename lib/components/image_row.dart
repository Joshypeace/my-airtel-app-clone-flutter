import 'package:flutter/material.dart';

class ScrollableImageRow extends StatelessWidget {
   final List<String> imagePaths;

   const ScrollableImageRow({super.key, required this.imagePaths});
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 250.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover,
                  width: 150.0,
                  height: 200.0,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
