import 'package:flutter/material.dart';
import 'package:oblack_tech/Pages/oblack/select_sound.dart';
import 'package:oblack_tech/Pages/oblack/settings.dart';
import 'package:oblack_tech/Pages/oblack/watch_tutorials.dart';
import 'package:oblack_tech/Pages/raw/oblack_widgets.dart';
import 'package:oblack_tech/Pages/raw/sound_button.dart';
import 'package:oblack_tech/Repo/google_signin.dart';
import 'package:provider/provider.dart';

class HomeGroup extends StatelessWidget {
  const HomeGroup({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> users =
        FirebaseFirestore.instance.collection('callers').snapshots();
    return Scaffold(
      backgroundColor: kolor.backGroundColors,
      body: StreamBuilder<QuerySnapshot>(
        stream: users,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Error occured'));
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: Text('Loading')
                  //  Image.asset(
                  //   'assets/icon.png',
                  //   scale: 4,
                  // ),
                  ),
            );
          }

          final data = snapshot.requireData;

          return SingleChildScrollView(
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
                              final provider =
                                  Provider.of<GoogleSignInProvider>(context,
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
                        data.size,
                        (index) {
                          return SoundButton(
                            text: data.docs[index]['name'],
                            width: 80,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(
                                    subCollection: data.docs[index]['docID'],
                                  ), //'eA2VXNCFUW3s7SVP367o'
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
                              builder: (context) =>
                                  const SelectedUserClipBoard(),
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
          );
        },
      ),
    );
  }
}

// class CircleRow extends StatelessWidget {
//   const CircleRow({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Column(
//           children: const [
//             CircleAvatar(
//               backgroundColor: Colors.white,
//               radius: 15,
//             ),
//             Text(
//               'mac',
//               style: TextStyle(
//                 fontSize: 10,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(width: 15),
//         Column(
//           children: const [
//             CircleAvatar(
//               backgroundColor: Colors.white,
//               radius: 15,
//             ),
//             Text(
//               'mac',
//               style: TextStyle(
//                 fontSize: 10,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(width: 15),
//         Column(
//           children: [
//             Container(
//               height: 30,
//               width: 30,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 border: Border.all(
//                   width: 0.5,
//                   color: const Color(0xFFB20000),
//                 ),
//               ),
//             ),
//             const Text(
//               'mac',
//               style: TextStyle(
//                 color: Color(0xFFB20000),
//                 fontSize: 10,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
