class Video {
  final String id;
  final String title;
  final int duration;
  final String teacherName;
  final String thumbnailUrl;
  final int views;
  final String category;

  Video({
    required this.id,
    required this.title,
    required this.duration,
    required this.teacherName,
    required this.thumbnailUrl,
    required this.views,
    required this.category,
  });

  factory Video.fromMap(Map<String, dynamic> data) {
    return Video(
      id: data['id'],
      title: data['title'],
      duration: data['duration'],
      teacherName: data['teacherName'],
      thumbnailUrl: data['thumbnailUrl'],
      views: data['views'],
      category: data['category'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'duration': duration,
      'teacherName': teacherName,
      'thumbnailUrl': thumbnailUrl,
      'views': views,
      'category': category,
    };
  }
}
