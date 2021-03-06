import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Pages/raw/three_buttons.dart';
import 'package:oblack_tech/Repo/authentication/widget.dart';
import 'package:oblack_tech/Repo/authService.dart';
import 'package:provider/provider.dart';
import 'oblack_widgets.dart';

class NewUsers extends StatefulWidget {
  const NewUsers({Key? key}) : super(key: key);

  @override
  State<NewUsers> createState() => _NewUsersState();
}

class _NewUsersState extends State<NewUsers> {
  File? file;
  Future selectFile() async {
    final results = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (results == null) return;
    final path = results.files.single.path!;

    setState(() => file = File(path));
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FireBaseAuthService>(context, listen: false);
    final formKey = GlobalKey<FormState>(debugLabel: 'formState');
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();
    final _birthdayController = TextEditingController();
    final _notesController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xFFC19151),
      body: SingleChildScrollView(
        child: Padding(
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
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: InkWell(
                              onTap: selectFile,
                              child: freePack(
                                height: 80,
                                width: 100,
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
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              freePack(
                                height: 30,
                                width: 170,
                                child: formTile(
                                  controller: _nameController,
                                  hintText: 'Name',
                                ),
                              ),
                              const SizedBox(width: 10),
                              freePack(
                                height: 30,
                                width: 30,
                                child: const Text(''),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'male',
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              freePack(
                                height: 30,
                                width: 30,
                                child: const Text(''),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'female',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              freePack(
                                height: 30,
                                width: 170,
                                child: formTile(
                                  controller: _emailController,
                                  hintText: 'Email',
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              freePack(
                                height: 30,
                                width: 170,
                                child: formTile(
                                  controller: _birthdayController,
                                  hintText: 'Birthday',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Center(
                            child: freePack(
                              height: 50,
                              width: 350,
                              child: formTile(
                                controller: _notesController,
                                hintText: 'Notes',
                              ),
                            ),
                          ),
                        ],
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
                  DButton(onTap: () async {
                    if (formKey.currentState!.validate()) {
                      provider.studentsData(
                        _nameController.text,
                        _emailController.text,
                        // _birthdayController.text,
                        // _notesController.text,
                      );
                    }
                  }),
                  SButton(
                    onPressed: () {},
                    pIcons: Icons.volume_up_outlined,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
