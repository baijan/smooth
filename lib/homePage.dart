import 'package:flutter/material.dart';
import 'package:flutter_application_1/smooth.dart/page2.dart';
import 'package:flutter_application_1/smooth.dart/page3.dart';
import 'package:flutter_application_1/smooth.dart/page4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'smooth.dart/page1.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: JumpingDotEffect(
              activeDotColor: Colors.green,
              dotColor: Colors.green.shade100,
              dotWidth: 30,
              dotHeight: 30,
              spacing: 16,
              verticalOffset: 20,
            ),
          )
        ],
      ),
    );
  }
}
