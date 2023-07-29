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
            back: Colors.orange,
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
            back: Colors.green,
            icon: Colors.purple,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => StartPage(),
          //       ));
          // },
          child: const Categories(
            title: 'Car questions',
            back: Colors.blue,
            icon: Colors.red,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          // onTap: () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => StartPage(),
          //       ));
          // },
          child: const Categories(
            title: 'Other questions',
            back: Colors.red,
            icon: Colors.black,
          ),
        ),
      ],
    );
  }
}
