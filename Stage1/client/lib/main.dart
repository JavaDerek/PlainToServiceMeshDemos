import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import './greeting.dart';

void main() {
  const oneSec = Duration(seconds: 1);
  Timer.periodic(
      oneSec,
      (Timer t) => http
              .read(Uri.parse('http://localhost:8080/greeting'))
              .then((contents) {
            Greeting g = Greeting.fromJson(jsonDecode(contents));
            print(g.id);
            print(g.content); // Here we output the contents of our service
          }));
}
