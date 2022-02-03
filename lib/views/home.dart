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
            Icon(Icons.album),
            SizedBox(
              width: 10,
            ),
            Text('Album')
          ],
        ),
      ),
      body: ListView(
        children: [AlbumCard()],
      ),
    );
  }
}
