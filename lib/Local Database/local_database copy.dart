class LocalDatabase {
  final String alphabets;
  final List component;
  LocalDatabase({
    required this.alphabets,
    required this.component,
  });
}

class Components {
  final String uRL;
  final String imageURL;
  final double timeFrame;
  final String word;
  final String sentences;
  Components({
    required this.uRL,
    required this.imageURL,
    required this.timeFrame,
    required this.word,
    required this.sentences,
  });
}

List<LocalDatabase> localDataBase = [
  LocalDatabase(
    alphabets: 'A',
    component: [
      Components(
        imageURL: 'alphabets: A',
        sentences: 'alphabets: A',
        timeFrame: 22,
        word: 'Not been picky',
        uRL:
            'https://firebasestorage.googleapis.com/v0/b/oblack123.appspot.com/o/Audio%20FIles%2FB1-%20Sentences-%20Man.mp3?alt=media&token=baeb0166-d0fa-4f3c-997f-77cb204b481f',
      ),
      Components(
        imageURL: 'alphabets: B',
        sentences: 'alphabets: B',
        timeFrame: 120,
        word: 'Concerntrating on the higher grounds',
        uRL:
            'https://firebasestorage.googleapis.com/v0/b/oblack123.appspot.com/o/Audio%20FIles%2Fjustin_bieber_peaches_ft._daniel_caesar_giveon_aac_66644.mp4?alt=media&token=7886cc13-51f3-44a1-942e-54bd56608c77',
      ),
      Components(
        imageURL: 'alphabets: A',
        sentences: 'alphabets: A',
        timeFrame: 30,
        word: 'Getting back to back',
        uRL:
            'https://firebasestorage.googleapis.com/v0/b/oblack123.appspot.com/o/Audio%20FIles%2FB1-%20Sentences-%20Man.mp3?alt=media&token=baeb0166-d0fa-4f3c-997f-77cb204b481f',
      ),
      Components(
        imageURL: 'alphabets: A',
        sentences: 'alphabets: A',
        timeFrame: 50,
        word: 'Beggin the question.',
        uRL:
            'https://firebasestorage.googleapis.com/v0/b/oblack123.appspot.com/o/Audio%20FIles%2FB1-%20Sentences-%20Man.mp3?alt=media&token=baeb0166-d0fa-4f3c-997f-77cb204b481f',
      ),
    ],
  ),
  LocalDatabase(
    alphabets: 'B',
    component: [
      Components(
        imageURL: 'alphabets: B',
        sentences: 'alphabets: B',
        timeFrame: 8,
        word: 'alphabets: B',
        uRL:
            'https://firebasestorage.googleapis.com/v0/b/oblack123.appspot.com/o/Audio%20FIles%2FB1-%20Sentences-%20Man.mp3?alt=media&token=baeb0166-d0fa-4f3c-997f-77cb204b481f',
      ),
    ],
  ),
  LocalDatabase(
    alphabets: 'D',
    component: [
      Components(
        imageURL: 'alphabets: D',
        sentences: 'alphabets: D',
        timeFrame: 2,
        word: 'alphabets: D',
        uRL:
            'https://firebasestorage.googleapis.com/v0/b/oblack123.appspot.com/o/Audio%20FIles%2FB1-%20Sentences-%20Man.mp3?alt=media&token=baeb0166-d0fa-4f3c-997f-77cb204b481f',
      ),
    ],
  ),
  LocalDatabase(
    alphabets: 'C',
    component: [
      Components(
        imageURL: 'alphabets: C',
        sentences: 'alphabets: C',
        timeFrame: 2,
        word: 'alphabets: C',
        uRL:
            'https://firebasestorage.googleapis.com/v0/b/oblack123.appspot.com/o/Audio%20FIles%2FB1-%20Sentences-%20Man.mp3?alt=media&token=baeb0166-d0fa-4f3c-997f-77cb204b481f',
      ),
    ],
  ),
];
