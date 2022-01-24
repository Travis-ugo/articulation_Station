import 'package:flutter/material.dart';
import 'package:oblack_tech/Audio%20File/record_functions.dart';
import 'package:oblack_tech/Local%20Database/local_database%20copy.dart';
import 'package:oblack_tech/Pages/oblack/settings.dart';
import 'package:oblack_tech/Pages/oblack/watch_tutorials.dart';
import 'package:oblack_tech/Pages/raw/oblack_widgets.dart';
import 'package:oblack_tech/Pages/raw/selected_multi_user.dart';
import 'package:oblack_tech/Pages/raw/sound_button.dart';
import 'package:oblack_tech/Pages/raw/three_buttons.dart';
import 'package:oblack_tech/Pages/raw/user_clipboard.dart';
import 'package:oblack_tech/Repo/authService.dart';
import 'package:provider/provider.dart';

class Group extends StatelessWidget {
  const Group({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kolor.backGroundColors,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 0),
                  // const CircleRow(),
                  Row(
                    children: [
                      const Icon(
                        Icons.shopping_cart,
                        size: 34,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 15),
                      LButton(
                        onTap: () {
                          final provider = Provider.of<FireBaseAuthService>(
                              context,
                              listen: false);
                          provider.logOut();
                        },
                        text: 'Store',
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 120,
                width: MediaQuery.of(context).size.width,
                child: GridView.count(
                  crossAxisCount: 6,
                  crossAxisSpacing: 30.0,
                  mainAxisSpacing: 0,
                  children: List.generate(
                    localDataBase.length,
                    (index) {
                      return SoundButton(
                        text: localDataBase[index].alphabets,
                        width: 80,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GroupUpper(
                                      family: localDataBase[index].component,
                                      alphabet: localDataBase[index].alphabets,
                                    )
                                // SelectedSound(
                                //     subCollection: data.docs[index]['docID'])
                                // HomePage(subCollection: data.docs[index]['docID'],),//'eA2VXNCFUW3s7SVP367o'
                                // SelectedSound(
                                //   sound: data.docs[index],
                                //   subCollection: data.docs[index]['docID'],
                                // ),
                                ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LButton(
                    text: 'Info',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Contain(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 15),
                  LButton(
                    text: 'Score',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectedUserClipBoard(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 15),
                  LButton(
                      text: 'Group',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SelectedMutiUser(),
                          ),
                        );
                      }),
                  const SizedBox(width: 15),
                  LButton(
                    text: 'Settings',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsPage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 15),
                  LButton(text: 'Multiple', onTap: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GroupUpper extends StatelessWidget {
  final String alphabet;
  final List family;
  const GroupUpper({
    Key? key,
    required this.alphabet,
    required this.family,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: family.length,
        pageSnapping: true,
        itemBuilder: (BuildContext context, int index) {
          return Classification(
            word: family[index].word,
            sentence: family[index].sentences,
            imageURL: family[index].imageURL,
            soundURL: family[index].uRL,
            timeStamp: family[index].timeFrame,
            alphabet: alphabet,
          );
        },
      ),
    );
  }
}

class Classification extends StatefulWidget {
  final String alphabet;
  final String word;
  final String sentence;
  final String imageURL;
  final String soundURL;
  final double timeStamp;
  const Classification({
    Key? key,
    required this.alphabet,
    required this.word,
    required this.sentence,
    required this.imageURL,
    required this.soundURL,
    required this.timeStamp,
  }) : super(key: key);

  @override
  State<Classification> createState() => _ClassificationState();
}

class _ClassificationState extends State<Classification> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customButtons(context),
          customFrame(
            child: Center(
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.word,
                          style: const TextStyle(
                            color: Color(0xFFC79758),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AudioRecorder(
                          text: '/${widget.alphabet}',
                          soundURL: widget.soundURL,
                          timeStamp: widget.timeStamp,
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          color: Colors.white,
                          child: Text(widget.imageURL),
                        ),
                      ]),
                  const SizedBox(height: 15),
                  Text(
                    widget.sentence,
                    //  data.docs[index]['word'],
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    '',
                    // data.docs[index]['images'],
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const DButton(),
        ],
      ),
    );
  }
}
