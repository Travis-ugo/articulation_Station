import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Widgets/buttons.dart';

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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SButton(
                        onPressed: () {},
                        pIcons: CupertinoIcons.home,
                      ),
                      const SizedBox(height: 20),
                      SButton(
                        onPressed: () {},
                        pIcons: Icons.chevron_left,
                      ),
                      const SizedBox(height: 140),
                      SButton(
                        onPressed: () {},
                        pIcons: Icons.settings,
                      ),
                    ],
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width - 380,
                    color: const Color(0xFFE9CDA6),
                    child: Center(
                      child: Container(
                        height: 280,
                        width: MediaQuery.of(context).size.width - 400,
                        color: const Color(0xFF7E4900),
                        child: Center(
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
                      ),
                    ),
                  ),
                  DButton(key: key)
                ],
              ),
            ),
            Container(
              color: const Color(0xFFDA8E00),
              width: MediaQuery.of(context).size.width,
              height: 40,
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
