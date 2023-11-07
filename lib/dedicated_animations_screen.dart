import 'package:flutter/material.dart';

class DedicatedAnimations extends StatefulWidget {
  const DedicatedAnimations({super.key});

  @override
  State<DedicatedAnimations> createState() => _DedicatedAnimationsState();
}

class _DedicatedAnimationsState extends State<DedicatedAnimations> with SingleTickerProviderStateMixin {

  late AnimationController animationController;

  late final Animation<double> rotateAnim=Tween<double>(begin: 0,end: 10).animate(animationController);

  late final Animation<double> opacityAnim=Tween<double>(begin: 0.2,end: 1.0).animate(animationController);

  late final Animation<double> sizeAnim=Tween<double>(begin: 15,end: 200).animate(animationController);

  late final Animation<double> borderRadiusAnim=Tween<double>(begin: 1,end: 40).animate(animationController);

  late final Animation<Color?> colorAnim=ColorTween(begin: Colors.pink,end: Colors.blueAccent).animate(animationController);

  @override
  void initState() {
    super.initState();
    animationController=AnimationController(vsync: this,duration: const Duration(seconds: 4));
    animationController.repeat();
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
                "Dedicated Animation",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Image.asset("assets/images/logo.png",width: 50,height: 50,),
                )
              ],
            ),
            body: Center(
              child: AnimatedBuilder(animation: animationController, builder: (context, child) {
                return Transform.rotate(
                    angle: rotateAnim.value,
                  child: Opacity(
                    opacity: opacityAnim.value,
                    child: Container(
                      width: sizeAnim.value,
                      height: sizeAnim.value,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(borderRadiusAnim.value),
                        color: colorAnim.value
                      ),
                    ),
                  ),
                );
              },),
            )
        ));
  }
}
