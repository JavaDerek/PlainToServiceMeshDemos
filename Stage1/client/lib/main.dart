import 'package:http/http.dart' as http;
import 'dart:convert';
import './greeting.dart';

void main() {
  http.read(Uri.parse('http://localhost:8080/greeting')).then((contents) {
    Greeting g = Greeting.fromJson(jsonDecode(contents));
    print(g.id);
    print(g.content); // Here we output the contents of our service
  });
}
