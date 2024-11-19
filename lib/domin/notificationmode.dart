class NotificationData {
  final String title;
  final String body;
  final String timestamp;
  final String image;

  NotificationData({required this.title, required this.body, required this.timestamp, required this.image});

  factory NotificationData.fromJson(Map<String, dynamic> json) {
    return NotificationData(
      title: json['title'],
      body: json['body'],
      timestamp: json['timestamp'],
      image: json['image'],
    );
  }
}
