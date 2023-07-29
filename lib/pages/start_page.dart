import 'package:flutter/material.dart';
import 'package:quiz_app_ui/pages/home_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 159, 127, 255),
        body: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              color: const Color.fromARGB(255, 159, 127, 255),
              height: double.infinity,
              width: double.infinity,
              child: const Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Interesting QUIZ Awaits You',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.question_mark,
                      size: 100,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: const [
                  BoxShadow(offset: Offset(0, 1), blurRadius: 2)
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Play with us',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'play quizzes with your friends and get various prizes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 124, 124, 124),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.orange.shade300),
                            elevation: MaterialStateProperty.all(5)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                        },
                        child: const Text(
                          'Start !',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
