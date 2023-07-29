import 'package:flutter/material.dart';
import 'package:quiz_app_ui/questions/math_page.dart';

import 'categories.dart';
import 'start_page.dart';

class CateListPage extends StatelessWidget {
  const CateListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MathPage(),
                ));
          },
          child: const Categories(
            title: 'Math questions',
            begin: Colors.orange,
            end: Colors.pink,
            icon: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StartPage(),
                ));
          },
          child: const Categories(
            title: 'Logo questions',
            begin: Colors.green,
            end: Colors.yellow,
            icon: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const InkWell(
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => StartPage(),
          //       ));
          // },
          child: Categories(
            title: 'Car questions',
            begin: Colors.blue,
            end: Colors.red,
            icon: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const InkWell(
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => StartPage(),
          //       ));
          // },
          child: Categories(
            title: 'Other questions',
            begin: Colors.white,
            end: Colors.black,
            icon: Colors.white,
          ),
        ),
      ],
    );
  }
}
