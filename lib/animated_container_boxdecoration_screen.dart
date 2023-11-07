import 'package:flutter/material.dart';

class AnimatedContainerBoxDecoration extends StatefulWidget {
  const AnimatedContainerBoxDecoration({super.key});

  @override
  State<AnimatedContainerBoxDecoration> createState() =>
      _AnimatedContainerBoxDecorationState();
}

class _AnimatedContainerBoxDecorationState
    extends State<AnimatedContainerBoxDecoration> {
  Color color = Colors.green;
  double borderRadius = 10;
  double width = 130;
  double height = 130;

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
          "Animated Container",
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
              if(color==Colors.green && borderRadius==10 && width==130&&height==130){
                color=Colors.teal;
                borderRadius=90;
                width=123;
                height=123;
              }else{
                color=Colors.green;
                borderRadius=10;
                width=130;
                height=130;
              }
            });
          },
          child: const Text("Run"),
        ),
      ),
      body: Center(
          child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(borderRadius)
            ),
      )),
    ));
  }
}
