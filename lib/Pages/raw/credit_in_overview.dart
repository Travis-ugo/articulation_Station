import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Widgets/buttons.dart';

class CreditOverView extends StatelessWidget {
  const CreditOverView({Key? key}) : super(key: key);

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
                      const SizedBox(height: 100),
                      SButton(
                        onPressed: () {},
                        pIcons: Icons.settings,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 300,
                    width: 450,
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
                        children: const [
                          Text(
                            'James',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Estamos Bien" (stylized in upper case; English is a song by the Puerto Rican Latin trap artist Bad Bunny.',
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 0.5,
                            ),
                          ),
                          Text(
                            'Jennifer',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Estamos Bien" (stylized in upper case; English is a song by the Puerto Rican Latin trap artist Bad Bunny. The song was released by Rimas Entertainment on June 28, 2018, as the first single from his first studio album, X 100pre (2018).[1] It was written by Benito Martinez and Ismael Flores and',
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 0.5,
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
            Container(
              color: const Color(0xFFDA8E00),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Row(
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
                  ),
                  SizedBox(width: 30),
                  Text(
                    'review',
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