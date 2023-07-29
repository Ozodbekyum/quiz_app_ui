import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String title;
  final Color begin;
  final Color end;
  final Color icon;

  const Categories(
      {super.key,
      required this.title,
      required this.begin,
      required this.icon,
      required this.end});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[begin, end]),
          color: begin,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(offset: Offset(0, 1), blurRadius: 0.1)]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: const TextStyle(
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
