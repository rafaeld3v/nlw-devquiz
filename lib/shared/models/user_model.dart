class UserModel {
  final String name;
  final String photoUrl;
  final String score;

  UserModel({
    required this.name,
    required this.photoUrl,
    this.score = "0",
  });
}
