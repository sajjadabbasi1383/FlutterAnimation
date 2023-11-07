import 'package:flutter/material.dart';

class DedicatedAnimations extends StatefulWidget {
  const DedicatedAnimations({super.key});

  @override
  State<DedicatedAnimations> createState() => _DedicatedAnimationsState();
}

class _DedicatedAnimationsState extends State<DedicatedAnimations> {


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
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(22.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black54)),
                  onPressed: () {
                    setState(() {

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
                      "assets/images/logo.png",
                      width: 370,
                      height: 370,
                    )
                ),


              ],
            )));
  }
}
