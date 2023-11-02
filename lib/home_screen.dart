import 'package:animations/animation_instagram_like.dart';
import 'package:animations/animation_rotate_screen.dart';
import 'package:animations/animation_scale_screen.dart';
import 'package:animations/hide_show_animated_screen.dart';
import 'package:flutter/material.dart';

import 'animated_container_boxdecoration_screen.dart';
import 'move_in_different_directions_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List names = [
    "Hide & Show Animation",
    "Animated Container BoxDecoration",
    "Move Animation",
    "Rotate Animation",
    "Scale Animation",
    "Instagram Like Animation",
  ];

  List screen = [
    const HideAndShowAnimation(),
    const AnimatedContainerBoxDecoration(),
    const MoveAnimation(),
    const RotateAnimation(),
    const ScaleAnimation(),
    const InstagramLikeAnimation(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          const Text(
            "Animation in Flutter",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.2,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: names.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 7, crossAxisSpacing: 7),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return screen[index];
                        }),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            names[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 17, color: Colors.black87),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
