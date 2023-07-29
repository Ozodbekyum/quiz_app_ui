import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              width: double.infinity,
              height: 35,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.circular(50)),
              child: Stack(children: [
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width: constraints.maxWidth * 0.5,
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[Colors.white, Colors.green]),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                const Positioned.fill(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('12 sec'),
                      Icon(
                        Icons.punch_clock,
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                ))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
