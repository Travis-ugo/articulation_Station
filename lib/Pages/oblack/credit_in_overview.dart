import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditOverView extends StatelessWidget {
  const CreditOverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
