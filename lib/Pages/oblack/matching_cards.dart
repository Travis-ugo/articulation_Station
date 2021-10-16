import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Pages/raw/oblack_widgets.dart';

import 'package:oblack_tech/Pages/raw/three_buttons.dart';

class Matchingcards extends StatelessWidget {
  const Matchingcards({Key? key}) : super(key: key);

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customButtons(context),
                  customFrame(
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 24.0,
                      children: List.generate(
                        9,
                        (index) {
                          return Center(
                            child: Column(children: [
                              Container(
                                height: 80,
                                width: 110,
                                color: Colors.white,
                              ),
                              const Text(
                                'Application',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ]),
                          );
                        },
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
