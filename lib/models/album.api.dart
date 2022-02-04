import 'dart:convert';

import 'package:http/http.dart' as http;

import 'album.dart';

class AlbumApi {
  static Future<List<Album>> getAlbum() async {
    var uri = Uri.https('pixabay.com', 'api',
        {'key': '21693065-57bfcacd790cbd29ca3c50bc1', 'q': 'cake'});

    final response = await http.get(uri);

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['hits']) {
      _temp.add(i);
    }
    return Album.albumFromSnapshot(_temp);
  }
}
