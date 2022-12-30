import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import './greeting.dart';

void main() {
  const oneSec = Duration(seconds: 1);
  Timer.periodic(
      oneSec,
      (Timer t) =>
          http.read(Uri.parse('http://server:8080/greeting')).then((contents) {
            var rawBytes = latin1.encode(contents);
            String utf8Text = utf8.decode(rawBytes);
            Greeting g = Greeting.fromJson(jsonDecode(utf8Text));
            print(g.id);
            print(g.content); // Here we output the contents of our service
          }));
}
