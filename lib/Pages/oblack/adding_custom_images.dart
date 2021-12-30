import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Pages/raw/sound_button.dart';
import 'package:oblack_tech/Pages/raw/three_buttons.dart';
import 'package:oblack_tech/Repo/authentication/widget.dart';
import '../raw/oblack_widgets.dart';

class AddingCustomimages extends StatefulWidget {
  const AddingCustomimages({Key? key}) : super(key: key);

  @override
  State<AddingCustomimages> createState() => _AddingCustomimagesState();
}

class _AddingCustomimagesState extends State<AddingCustomimages> {
  File? file;
  Future selectFile() async {
    final results = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (results == null) return;
    final path = results.files.single.path!;

    setState(() => file = File(path));
  }

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xFFC19151),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customButtons(context),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Frame
                  freeFrame(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: selectFile,
                                child: freePack(
                                  height: 60,
                                  width: 80,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.person, color: Colors.white),
                                      SizedBox(),
                                      Text(
                                        'add photo',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              freePack(
                                height: 30,
                                width: 170,
                                child: formTile(
                                  controller: _nameController,
                                  hintText: 'Name',
                                ),
                              ),
                              freePack(
                                height: 45,
                                width: 170,
                                child: formTile(
                                  controller: _nameController,
                                  hintText: 'Sentences',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      height: 200,
                      width: 380),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // small box
                      freeFrame(
                          child: SoundButton(
                            width: 80,
                            text: '',
                            onTap: () {},
                          ),
                          height: 200,
                          width: 500),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                const DButton(),
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
