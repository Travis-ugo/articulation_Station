import 'package:flutter/material.dart';
import 'package:oblack_tech/Widgets/buttons.dart';

class NewUsers extends StatelessWidget {
  const NewUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[400],
        body: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SButton(
                    onPressed: () {},
                    pIcons: Icons.settings,
                  ),
                  SButton(
                    onPressed: () {},
                    pIcons: Icons.settings,
                  ),
                  SButton(
                    onPressed: () {},
                    pIcons: Icons.settings,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    color: Colors.white54,
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
