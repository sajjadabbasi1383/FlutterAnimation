import 'package:flutter/material.dart';

class InstagramLikeAnimation extends StatefulWidget {
  const InstagramLikeAnimation({super.key});

  @override
  State<InstagramLikeAnimation> createState() => _InstagramLikeAnimationState();
}

class _InstagramLikeAnimationState extends State<InstagramLikeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  bool isLike=false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    //animationController.repeat();
  }

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
                "Instagram Like Animation",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Image.asset("assets/images/logo.png",width: 50,height: 50,),
                )
              ],
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
                      AnimatedBuilder(
                        animation: CurvedAnimation(curve: Curves.bounceInOut,parent: animationController),
                        builder: (context, child) {
                          return IconButton(
                              onPressed: () {
                                if(isLike){
                                  isLike=false;
                                  animationController.reverse();
                                }else{
                                  isLike=true;
                                  if(!animationController.isCompleted){
                                    animationController.forward();
                                  }
                                }
                              },
                              icon: isLike?Opacity(
                                  opacity: animationController.value !=
                                          animationController.lowerBound
                                      ? animationController.value
                                      : 1,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: animationController.value !=
                                            animationController.lowerBound
                                        ? 26 * animationController.value
                                        : 26,
                                  )):
                              Opacity(
                                  opacity: animationController.value !=
                                      animationController.lowerBound
                                      ? animationController.value
                                      : 1,
                                  child: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.black,
                                    size: animationController.value !=
                                        animationController.lowerBound
                                        ? 26 * animationController.value
                                        : 26,
                                  ))
                          );
                        },
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.messenger_outline)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.send)),
                    ],
                  )
                ],
              ),
            )));
  }
}
