import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class QuotesPage extends StatelessWidget {
  const QuotesPage({super.key});
  Future<List<Map<String, String>>> fetchQuoteImages(int count) async {
    final quoteRes =
        await Dio().get('https://api.quotable.io/quotes?limit=$count');

    final quotes = quoteRes.data['results'] as List;
    List<Map<String, String>> quoteImagePairs = [];

    for (int i = 0; i < quotes.length; i++) {
      final quote = quotes[i]['content'];
      final author = quotes[i]['author'];

      // Random image from Unsplash
      final imageUrl =
          'https://source.unsplash.com/random/800x600/?motivation,nature&sig=$i';

      quoteImagePairs.add({
        'quote': '$quote — $author',
        'image': imageUrl,
      });
    }

    return quoteImagePairs;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchQuoteImages(20),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return CircularProgressIndicator();
        final data = snapshot.data!;

        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final quote = data[index]['quote']!;
            final image = data[index]['image']!;
            return Stack(
              alignment: Alignment.center,
              children: [
                Image.network(image, width: double.infinity, fit: BoxFit.cover),
                Container(
                  color: Colors.black45,
                  padding: EdgeInsets.all(12),
                  child: Text(
                    quote,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
