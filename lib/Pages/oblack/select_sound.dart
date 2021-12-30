import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Pages/raw/oblack_widgets.dart';
import 'package:oblack_tech/Pages/raw/three_buttons.dart';

class HomePage extends StatefulWidget {
  final String subCollection;
  const HomePage({Key? key, required this.subCollection}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textEditor = TextEditingController();
  final ageEditor = TextEditingController();
  final _formKey = GlobalKey<FormState>(debugLabel: '_EmailFormState');

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> users = FirebaseFirestore.instance
        .collection('callers')
        .doc(widget.subCollection)
        .collection('call')
        .snapshots();

    CollectionReference user = FirebaseFirestore.instance.collection('callers');

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: StreamBuilder<QuerySnapshot>(
                    stream: users,
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return const Center(
                          child: Text('Error Occured'),
                        );
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: Text('Loading'),
                        );
                      }
                      final data = snapshot.requireData;
                      return Scaffold(
                          backgroundColor: const Color(0xFFC19151),
                          body: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 60),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      customButtons(context),
                                      customFrame(
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Text(
                                                      'bh',
                                                      //  data.docs[index]['word'],
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFC79758),
                                                        fontSize: 102,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    const Text(
                                                      'h',

                                                      // 'as in /${data.docs[index]['images']}/',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFC79758),
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 90,
                                                      width: 90,
                                                      color: Colors.white,
                                                      // child: Text(data.docs[index]['images'],),
                                                    ),
                                                  ]),
                                              //   ],
                                              // ),
                                              const SizedBox(height: 15),
                                              const Text(
                                                '',
                                                //  data.docs[index]['word'],
                                                style: TextStyle(
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
                                )
                              ]));
                      // fanceyButttomLine(
                      //      context:   context,

                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: const [
                      //         Text(
                      //           'words',
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //           ),
                      //         ),
                      //         SizedBox(width: 30),
                      //         Text(
                      //           'sentence',
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //           ),
                      //         ),
                      //         SizedBox(width: 30),
                      //         Text(
                      //           'stories',
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //           ),
                      //         ),
                      //       ],
                      // ),

                      // ),
                      // ],
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// return ListView.builder(
//   itemCount: data.size,
//   itemBuilder: (context, index) {
//     return Center(
//       child: Text(
//         'My name is ${data.docs[index]['word']} my age ${data.docs[index]['images']}',
//       ),
//     );
//   },
// );
//             },
//           ),
//         ),
//         const Text('Test The Package'),
//         const Text('Write Data to Firestore'),
//         const SizedBox(height: 20),
//         TextFormField(
//           controller: textEditor,
//           decoration: const InputDecoration(
//             icon: Icon(Icons.person),
//             labelText: 'Name',
//           ),
//         ),
//         const SizedBox(height: 20),
//         TextFormField(
//           controller: ageEditor,
//           decoration: const InputDecoration(
//             icon: Icon(Icons.date_range),
//             labelText: 'Age',
//           ),
//         ),
//         const SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {
//             if (_formKey.currentState!.validate()) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(
//                   content: Text('submited'),
//                 ),
//               );
//               user
//                   .add({
//                     'name': textEditor.text,
//                     'docID': ageEditor.text,
//                   })
//                   .then((value) => print('user added'))
//                   .catchError((error) {
//                     print('this error occured $error');
//                   });
//             }
//           },
//           child: const Text('submit'),
//         ),
//         const SizedBox(height: 20),
//       ]),
//     ),
//   ),
// );
// }
// }

class SelectedSound extends StatelessWidget {
  // final QueryDocumentSnapshot<Object?> sound;
  // final Stream<QuerySnapshot> subCollection;
  final String subCollection;

  const SelectedSound({Key? key, required this.subCollection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> callertune = FirebaseFirestore.instance
        .collection('callers')
        .doc(subCollection)
        .collection('call')
        .snapshots();

    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: callertune,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Error occured'));
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: Text('Loading')),
            );
          }

          final data = snapshot.requireData;

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 60),
              // child: ListView.builder(
              //   itemCount: data.size,

              //   itemBuilder: (BuildContext context, int index) {
              //     return
              //   },

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  data.size,
                  (index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 150,
                            width: 150,
                            color: Colors.blue,
                            child: Text(data.docs[index]['word'])),
                        Text(data.docs[index]['sentence']),
                        Text(data.docs[index]['images']),
                        Text(data.docs[index]['sounds']),
                      ],
                    );
                  },
                ),
              ),
            ),
            // ),
          );
        },
      ),
    );
  }
}
