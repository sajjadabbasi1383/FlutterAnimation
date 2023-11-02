import 'package:flutter/material.dart';

class InstagramLikeAnimation extends StatefulWidget {
  const InstagramLikeAnimation({super.key});

  @override
  State<InstagramLikeAnimation> createState() => _InstagramLikeAnimationState();
}

class _InstagramLikeAnimationState extends State<InstagramLikeAnimation> with SingleTickerProviderStateMixin{

  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController=AnimationController(vsync: this,duration: const Duration(milliseconds: 780));
    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 3,
              leading: const Icon(
                Icons.arrow_back,
                size: 26,
                color: Colors.black,
              ),
              title: const Text(
                "Instagram Like Animation",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ),
            body: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text("SajjadAbbasi"),
                        const Expanded(child: SizedBox()),
                        const Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    color: Colors.black26,
                  ),
                  Row(
                    children: [
                      AnimatedBuilder(animation: animationController, builder: (context, child) {
                        return IconButton(
                            onPressed: () {},
                            icon: Opacity(
                                opacity: animationController.value,
                                child: Icon(Icons.favorite,color: Colors.red,size: 26*animationController.value,)));
                      },),
                      IconButton(
                          onPressed: () {},
                          icon:  const Icon(Icons.messenger_outline)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.send)),
                    ],
                  )
                ],
              ),
            )));
  }
}
