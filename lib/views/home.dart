import 'package:flutter/material.dart';
import 'package:flutter_api_practice2/views/widgets/album_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.cake),
            SizedBox(
              width: 10,
            ),
            Text('Album')
          ],
        ),
      ),
      body: const AlbumCard(
        user: 'user1',
        likes: 5,
        imageUrl:
            "https://pixabay.com/get/g3cdf4a22195d2aded36821cc5e5cd68df27763264df6eb1cf1242a15edac48524d97e1e43a94f06c6c3328e4963c8e15d2490a28a69dac19fd328887e21cc1f5_1280.jpg",
      ),
    );
  }
}
