class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String username;
  final String bio;
  final List followers;
  final List following;
  const User(
      {required this.uid,
      required this.username,
      required this.email,
      required this.bio,
      required this.photoUrl,
      required this.followers,
      required this.following});

  Map<String, dynamic> toJson() => {
        'username': username,
        'uid': uid,
        'email': email,
        'bio': bio,
        'followers': [],
        'following': [],
        'photoUrl': photoUrl,
      };
}
