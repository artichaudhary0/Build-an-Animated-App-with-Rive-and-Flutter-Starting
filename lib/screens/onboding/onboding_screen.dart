import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [

          Positioned(
            width: MediaQuery.of(context).size.width * 1.7,
            bottom: 200,
            left: 90,
            child: Image.asset(
              "assets/Backgrounds/Spline.png",
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
            ),
          ),
          const RiveAnimation.asset("assets/RiveAssets/shapes.riv"),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 40, sigmaY: 20),
              child: const SizedBox(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 230,
                  child: Text(
                    "Learn design & code",
                    style: TextStyle(
                        fontSize: 60, height: 1.2, fontFamily: "Poppins"),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.",
                ),
                Spacer(flex: 2,),
                Stack(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: RiveAnimation.asset(
                        "assets/RiveAssets/button.riv",
                      ),
                    ),


                    Positioned(
                      top: 15,
                      left: 25,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(CupertinoIcons.arrow_right),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Start the course",
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    "Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
