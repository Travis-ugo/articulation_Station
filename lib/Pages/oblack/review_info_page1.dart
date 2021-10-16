import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Pages/raw/oblack_widgets.dart';
import 'package:oblack_tech/Pages/raw/three_buttons.dart';

class ReviewPage1 extends StatelessWidget {
  const ReviewPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kolor.backGroundColors,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customButtons(context),
                  Container(
                    height: 300,
                    width: 470,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7E4900),
                      border: Border.all(
                        width: 25,
                        color: const Color(0xFFE9CDA6),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 420,
                            height: 40,
                            color: const Color(0xFFDA8E00),
                            child: const Center(
                              child: Text(
                                'How did we make you feel?',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: const [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 60,
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    'Happy',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 30),
                              Column(
                                children: const [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 60,
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    'Sad',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  DButton(key: key)
                ],
              ),
            ),
            fanceyButttomLine(
              context,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('over View'),
                  SizedBox(width: 30),
                  Text('Watch Tutorial'),
                  SizedBox(width: 30),
                  Text(
                    'review',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
