import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Pages/raw/three_buttons.dart';

import 'oblack_widgets.dart';

class NewUsers extends StatefulWidget {
  const NewUsers({Key? key}) : super(key: key);

  @override
  State<NewUsers> createState() => _NewUsersState();
}

class _NewUsersState extends State<NewUsers> {
  Future selectFile() async {
    final results = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (results == null) return;
    final path = results.files.single.path!;

    setState(() => file = File(path));
  }

  bool checkvalue = false;
  File? file;
  UploadTask? task;

  get key => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC19151),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customButtons(context),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customFrame(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            selectFile();
                          },
                          child: Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: kolor.backGroundColors,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.person, color: Colors.white),
                                SizedBox(),
                                Text(
                                  'add photo',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'name',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 100,
                            color: const Color(0xFFC19151),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          // Checkbox(
                          //     value: checkvalue,
                          //     onChanged: (value) {
                          //       setState(() {
                          //         setState(() => checkvalue = !checkvalue);
                          //       });
                          //     }),
                          Container(
                            height: 20,
                            width: 20,
                            color: const Color(0xFFC19151),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'male',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            color: const Color(0xFFC19151),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'female',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      const Text(
                        'name',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 125,
                            color: const Color(0xFFC19151),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 125,
                            color: const Color(0xFFC19151),
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
                            color: const Color(0xFFC19151),
                          ),
                        ],
                      ),
                    ],
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
      ),
    );
  }
}
