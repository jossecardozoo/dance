class DanceUser {
  final String id;
  final String name;
  final String email;
  final String avatarUrl;

  DanceUser({
    required this.id,
    required this.name,
    required this.email,
    required this.avatarUrl,
  });

  factory DanceUser.fromMap(Map<String, dynamic> data) {
    return DanceUser(
      id: data['id'],
      name: data['name'],
      email: data['email'],
      avatarUrl: data['avatarUrl'],
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'email': email, 'avatarUrl': avatarUrl};
  }
}
