
import 'package:flip_flap/Pages/raw/oblack_widgets.dart';
import 'package:flip_flap/Pages/raw/three_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ReviewInfo extends StatelessWidget {
  const ReviewInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC19151),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customButtons(context),
                 customFrame(child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          color: const Color(0xFFC19151),
                          child: const Center(
                              child: Text(
                            'using our app',
                            style: TextStyle(
                              color: Color(0xFF7E4900),
                            ),
                          )),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          color: const Color(0xFFC19151),
                          child: const Center(
                              child: Text(
                            'Credits',
                            style: TextStyle(
                              color: Color(0xFF7E4900),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  DButton(key: key)
                ],
              ),
            ),
           fanceyButttomLine(context, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'OverView',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'watch tutorial',
                    style: TextStyle(
                      color: Color(0xFF7E4900),
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'review',
                    style: TextStyle(
                      color: Color(0xFF7E4900),
                    ),
                  ),
                ],
              ),),
          ],
        ),
      ),
    );
  }
}
