import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String title;
  final Color back;
  final Color icon;

  const Categories({
    super.key,
    required this.title,
    required this.back,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: back,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(offset: Offset(0, 1), blurRadius: 0.1)]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style:const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.arrow_circle_right_outlined,
            color: icon,
          ),
        ],
      ),
    );
  }
}
