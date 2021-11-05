import 'package:oblack_tech/Pages/raw/oblack_widgets.dart';
import 'package:oblack_tech/Pages/raw/three_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectedSound extends StatelessWidget {
  final QueryDocumentSnapshot<Object?> sound;
  const SelectedSound({Key? key, required this.sound}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC19151),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customButtons(context),
                customFrame(
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              sound['Name'],
                              style: const TextStyle(
                                color: Color(0xFFC79758),
                                fontSize: 102,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'as in /${sound['Name']}/',
                              style: const TextStyle(
                                color: Color(0xFFC79758),
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              height: 90,
                              width: 90,
                              color: Colors.white,
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Text(
                          sound['Letter'],
                          style: const TextStyle(
                            fontSize: 12,
                          ),
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
                Text(
                  'words',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  'sentence',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  'stories',
                  style: TextStyle(
                    color: Colors.white,
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
