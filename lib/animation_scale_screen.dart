
import 'package:flutter/material.dart';

class ScaleAnimation extends StatefulWidget {
  const ScaleAnimation({super.key});

  @override
  State<ScaleAnimation> createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation> {

  double scale=2;
  bool click=true;

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
                "Scale Animation",
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
                      if(click){
                        scale-=1;
                        click=false;
                      }else{
                        scale+=1;
                        click=true;
                      }
                    });
                  },
                  child: const Text("Run")),
            ),
            body: Center(
                    child: AnimatedScale(
                      duration: Duration(seconds: 1),
                      curve: click?Curves.bounceIn:Curves.bounceOut,
                      scale: scale,
                      child: Image.asset(
                        "assets/images/ball.png",
                        width: 220,
                        height: 220,
                      ),
                    )
                ),
            ));
  }
}
