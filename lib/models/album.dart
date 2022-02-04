class Album {
  final String imageUrl, user;
  final int likes;

  Album({required this.imageUrl, required this.likes, required this.user});

  factory Album.fromJson(dynamic json) {
    return Album(
        imageUrl: json['largeImageURL'],
        likes: json['likes'],
        user: json['user']);
  }

  static List<Album> albumFromSnapshot(List snapshot) {
    return snapshot.map((data) => Album.fromJson(data)).toList();
  }
}
