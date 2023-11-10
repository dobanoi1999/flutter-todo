import 'package:flutter/material.dart';

class AvatarWithRadialGradientCircle extends StatelessWidget {
  final String imageUrl;

  AvatarWithRadialGradientCircle({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      child: Stack(
        alignment: Alignment.center,
        children: [
         Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromARGB(255, 165, 106, 157).withOpacity(0.4), Color.fromARGB(255, 160, 123, 161).withOpacity(0.7)]),
      ),

    ),
          RadialGradientCircle(),
          Container(width:90,height:90 ,child:  Positioned(
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 50,
            ),
          ),),
        ],
      ),
    );
  }
}

class RadialGradientCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient:  LinearGradient(colors: [Color(0xFF2979ff), Color(0xFF07a787)]),
      ),
    );
  }
}
