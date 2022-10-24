import 'package:flutter/material.dart';
import 'package:flutter_application_3/Home/Page1.dart';

import 'package:flutter_application_3/Home/intro_screens/intro_page1.dart';
import 'package:flutter_application_3/Home/intro_screens/intro_page2.dart';
import 'package:flutter_application_3/Home/intro_screens/intro_page3.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  PageController _controller = PageController();

  // keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Stack(
        children: [
          //page view
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          //do indicators
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Skip

                GestureDetector(
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                ),
                SmoothPageIndicator(controller: _controller, count: 3),

                // next or done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return HomePage1();
                            }),
                          );
                        },
                        child: Text(
                          'Done',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(fontSize: 18),
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
