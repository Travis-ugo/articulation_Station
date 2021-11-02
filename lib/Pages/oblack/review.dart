import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
                    radius: 45,
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
                    radius: 45,
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
    );
  }
}
