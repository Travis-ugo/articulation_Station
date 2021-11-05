
import 'package:flutter/material.dart';

class CommentReview extends StatelessWidget {
  const CommentReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    final commentController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 420,
          height: 40,
          color: const Color(0xFFDA8E00),
          child: const Center(
            child: Text(
              'Care to tell us why..?',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Column(
          children: [
            Container(
              height: 40,
              width: 300,
              color: Colors.white,
              child: TextFormField(
                autocorrect: false,
                controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 80,
              width: 300,
              color: Colors.white,
              child: TextFormField(
                autocorrect: false,
                controller: commentController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  hintText: 'we are all hears',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
