import 'package:flutter/material.dart';
import 'package:oblack_tech/audi/record_functions.dart';

// class Groupoper extends StatelessWidget {
//   final String alphabet;
//   final List family;
//   const Groupoper({
//     Key? key,
//     required this.alphabet,
//     required this.family,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 60),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             customButtons(context),
//             customFrame(
//               child: PageView(
//                 children: [
//                   PageView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: family.length,
//                     pageSnapping: true,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Express(
//                         initial: family[index].initial,
//                         medial: family[index].medial,
//                         end: family[index].end,
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             const DButton(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Express extends StatelessWidget {
//   final List initial;
//   final List medial;
//   final List end;
//   const Express({
//     Key? key,
//     required this.initial,
//     required this.medial,
//     required this.end,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(itemBuilder: (BuildContext context, int index) {
//       return Fication(
//                         word: family[index].word,
//                         sentence: family[index].sentences,
//                         imageURL: family[index].imageURL,
//                         soundURL: family[index].uRL,
//                         timeStamp: family[index].timeFrame,
//                         alphabet: alphabet,
//                       );
//     });
//   }
// }

class StainLess extends StatelessWidget {
  final String alphabet;
  final String word;
  final String sentence;
  final String imageURL;
  final String soundURL;
  final double timeStamp;
  const StainLess({
    Key? key,
    required this.alphabet,
    required this.word,
    required this.sentence,
    required this.imageURL,
    required this.soundURL,
    required this.timeStamp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(alphabet),
        Text(word),
        Text(sentence),
        Text('$timeStamp'),
        Text(soundURL),
      ],
    );
  }
}

class Fication extends StatefulWidget {
  final String alphabet;
  final String word;
  final String sentence;
  final String imageURL;
  final String soundURL;
  final double timeStamp;
  const Fication({
    Key? key,
    required this.alphabet,
    required this.word,
    required this.sentence,
    required this.imageURL,
    required this.soundURL,
    required this.timeStamp,
  }) : super(key: key);

  @override
  State<Fication> createState() => _FicationState();
}

class _FicationState extends State<Fication> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
            ],
          ),
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
    );
  }
}
