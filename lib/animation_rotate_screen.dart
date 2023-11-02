import 'package:flutter/material.dart';

class RotateAnimation extends StatefulWidget {
  const RotateAnimation({super.key});

  @override
  State<RotateAnimation> createState() => _RotateAnimationState();
}

class _RotateAnimationState extends State<RotateAnimation> {

  double turns=4;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 3,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 26,
                  color: Colors.black,
                ),
              ),
              title: const Text(
                "Rotate Animation",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(22.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black54)),
                  onPressed: () {
                    setState(() {
                      turns+=1;
                    });
                  },
                  child: const Text("Run")),
            ),
            body: Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                Center(
                    child: Image.asset(
                      "assets/images/car.png",
                      width: 370,
                      height: 370,
                    )
                ),
                Positioned(
                  top: 336,
                  left: 44,
                  child: AnimatedRotation(
                    duration: const Duration(seconds: 3),
                    turns: turns,
                    curve: Curves.linearToEaseOut,
                    child: Image.asset(
                      "assets/images/tire.png",
                      width:54,
                      height: 54,
                    ),
                  ),
                ),
                Positioned(
                  top: 337.4,
                  left: 268,
                  child: AnimatedRotation(
                    duration: const Duration(seconds: 3),
                    turns: turns,
                    curve: Curves.linearToEaseOut,
                    child: Image.asset(
                      "assets/images/tire.png",
                      width: 55,
                      height: 55,
                    ),
                  ),
                ),

              ],
            )));
  }
}
