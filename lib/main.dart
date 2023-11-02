import 'package:flutter/material.dart';

import 'animated_container_boxdecoration_screen.dart';
import 'animation_instagram_like.dart';
import 'animation_rotate_screen.dart';
import 'animation_scale_screen.dart';
import 'hide_show_animated_screen.dart';
import 'move_in_different_directions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InstagramLikeAnimation(),
    );
  }
}
