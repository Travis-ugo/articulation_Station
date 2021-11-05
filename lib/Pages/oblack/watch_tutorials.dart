import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Pages/oblack/review.dart';
import 'package:oblack_tech/Pages/raw/oblack_widgets.dart';
import 'package:oblack_tech/Pages/raw/three_buttons.dart';

import 'credit_in_overview.dart';

class WatchTutorials extends StatelessWidget {
  const WatchTutorials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
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
    );
  }
}

class Contain extends StatefulWidget {
  const Contain({Key? key}) : super(key: key);

  @override
  State<Contain> createState() => _ContainState();
}

class _ContainState extends State<Contain> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
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
                  child: PageView(
                    onPageChanged: (int index) {
                      setState(() {
                        // if (index == 2) {
                        //   icon = Icons.call;
                        // } else if (index == 1) {
                        //   icon = Icons.local_see;
                        // } else {
                        //   icon = Icons.message;
                        // }
                      });
                    },
                    children: const [
                      WatchTutorials(),
                      CreditOverView(),
                      Review(),
                    ],
                  ),
                ),
                const DButton(),
              ],
            ),
          ),
          buttonLinePageTransition(context, controller),
        ],
      ),
    );
  }
}

Widget buttonLinePageTransition(
    BuildContext context, PageController controller) {
  return Container(
    color: const Color(0xFFDA8E00),
    width: MediaQuery.of(context).size.width,
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            controller.animateToPage(
              0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
          child: const Text(
            'OverView',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {
            controller.animateToPage(
              1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
          child: const Text(
            'watch tutorial',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {
            controller.animateToPage(
              2,
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
          child: const Text(
            'review',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
