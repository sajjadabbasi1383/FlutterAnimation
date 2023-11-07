import 'package:flutter/material.dart';

class HideAndShowAnimation extends StatefulWidget {
  const HideAndShowAnimation({super.key});

  @override
  State<HideAndShowAnimation> createState() => _HideAndShowAnimationState();
}

class _HideAndShowAnimationState extends State<HideAndShowAnimation> {
  double opacity = 1.0;
  Duration duration = const Duration(milliseconds: 500);

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
          "Hide & Show Animation",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset("assets/images/logo.png",width: 50,height: 50,),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(22.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (opacity == 0.0) {
                opacity = 1.0;
              } else {
                opacity = 0.0;
              }
            });
          },
          child: const Text("Run"),
        ),
      ),
      body: Center(
          child: AnimatedOpacity(
        opacity: opacity,
        duration: duration,
        child: Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(15)),
        ),
      )),
    ));
  }
}
