import 'package:flutter/material.dart';
import 'package:oblack_tech/Pages/raw/oblack_widgets.dart';
import 'package:oblack_tech/Widgets/sound_button.dart';

class HomeGroup extends StatelessWidget {
  const HomeGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> users =
        FirebaseFirestore.instance.collection('guestbook').snapshots();
    return Scaffold(
      backgroundColor: kolor.backGroundColors,
      body: StreamBuilder<QuerySnapshot>(
          stream: users,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Error don sup');
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text('Loading');
            }
            final data = snapshot.requireData;
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 35, horizontal: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 0),
                        const CircleRow(),
                        Row(
                          children: [
                            const Icon(
                              Icons.shopping_cart,
                              size: 34,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 15),
                            LButton(onTap: () {}, text: 'Store'),
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
                          data.size,
                          (index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SelectedSound(sound: data.docs[index]),
                                  ),
                                );
                              },
                              child: SoundButton(
                                text: data.docs[index]['Name'],
                                width: 80,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        LButton(text: 'Info', onTap: () {}),
                        const SizedBox(width: 15),
                        LButton(text: 'Score', onTap: () {}),
                        const SizedBox(width: 15),
                        LButton(text: 'Group', onTap: () {}),
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
            );
          }),
    );
  }
}

class CircleRow extends StatelessWidget {
  const CircleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
            ),
            Text(
              'mac',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
        const SizedBox(width: 15),
        Column(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
            ),
            Text(
              'mac',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
        const SizedBox(width: 15),
        Column(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 0.5,
                  color: const Color(0xFFB20000),
                ),
              ),
            ),
            const Text(
              'mac',
              style: TextStyle(
                color: Color(0xFFB20000),
                fontSize: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
