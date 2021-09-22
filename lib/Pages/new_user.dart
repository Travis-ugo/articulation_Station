import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Widgets/buttons.dart';

class NewUsers extends StatelessWidget {
  const NewUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[200],
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 60),
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
                  SButton(
                    onPressed: () {},
                    pIcons: Icons.chevron_left,
                  ),
                  SButton(
                    onPressed: () {},
                    pIcons: Icons.settings,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    width: 400,
                    color: Colors.brown[500],
                    child: Center(
                      child: ConstrainedBox(
                        constraints:
                            const BoxConstraints(maxHeight: 250, maxWidth: 350),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                height: 80,
                                width: 100,
                                color: Colors.brown[200],
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.person),
                                    SizedBox(),
                                    Text('add photo'),
                                  ],
                                ),
                              ),
                            ),
                            const Text('name'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 100,
                                  color: Colors.brown[200],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  color: Colors.brown[200],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text('male'),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  color: Colors.brown[200],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text('female')
                              ],
                            ),
                            const Text('name'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 125,
                                  color: Colors.brown[200],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: 125,
                                  color: Colors.brown[200],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 260,
                                  color: Colors.brown[200],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  LButton(
                    onTap: () {},
                    text: 'cancel',
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  DButton(key: key),
                  SButton(
                    onPressed: () {},
                    pIcons: Icons.volume_up_outlined,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
