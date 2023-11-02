import 'package:flutter/material.dart';

class MoveAnimation extends StatefulWidget {
  const MoveAnimation({super.key});

  @override
  State<MoveAnimation> createState() => _MoveAnimationState();
}

class _MoveAnimationState extends State<MoveAnimation> {
  double bottom = 0.0;
  double left = 155;

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
                "Move Animation",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.black54)),
                      onPressed: () {
                        setState(() {
                          left -= 60;
                        });
                      },
                      child: const Icon(Icons.arrow_back,size: 41,)
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black54)),
                    onPressed: () {
                      setState(() {
                        bottom += 60;
                      });
                    },
                    child: const Icon(Icons.arrow_upward,size: 41,)
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black54)),
                    onPressed: () {
                      setState(() {
                        bottom -= 60;
                      });
                    },
                    child: const Icon(Icons.arrow_downward,size: 41,)
                  ),

                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black54)),
                    onPressed: () {
                      setState(() {
                        left += 60;
                      });
                    },
                    child: const Icon(Icons.arrow_forward,size: 41,)
                  ),
                ],
              ),
            ),
            body: Stack(
              children: [
                Container(
                  color: Colors.black87,
                ),
                AnimatedPositioned(
                    bottom: bottom,
                    left: left,
                    curve: Curves.decelerate,
                    duration: const Duration(milliseconds: 700),
                    child: Image.asset(
                      "assets/images/spaceShip.png",
                      width: 55,
                      height: 60,
                    ))
              ],
            )));
  }
}
