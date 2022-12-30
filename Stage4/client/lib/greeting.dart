class Greeting {
  final int id;
  final String content;

  const Greeting({
    this.id,
    this.content,
  });

  factory Greeting.fromJson(Map<String, dynamic> json) {
    return Greeting(
      id: json['id'],
      content: json['content'],
    );
  }
}
