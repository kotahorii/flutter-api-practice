import 'package:flutter/material.dart';
import 'package:flutter_api_practice2/models/album.api.dart';
import 'package:flutter_api_practice2/models/album.dart';
import 'package:flutter_api_practice2/views/widgets/album_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Album> _album = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    getAlbum();
  }

  Future<void> getAlbum() async {
    _album = await AlbumApi.getAlbum();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
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
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return AlbumCard(
                    imageUrl: _album[index].imageUrl,
                    likes: _album[index].likes,
                    user: _album[index].user);
              },
              itemCount: _album.length,
            ),
    );
  }
}
