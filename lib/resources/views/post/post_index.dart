import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:lara_flutter/app/models/post.dart';
import 'package:lara_flutter/resources/layouts/app_layout.dart';

class PostIndex extends StatefulWidget {
  @override
  _PostIndexState createState() => _PostIndexState();
}

class _PostIndexState extends State<PostIndex> {
  Future<Post> futurePost;

  get http => null;

  @override
  void initState() {
    super.initState();
    futurePost = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      view: Center(
        child: FutureBuilder<Post>(
          future: futurePost,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.title);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<Post> fetchAlbum() async {
  final response =
  await http.get('https://jsonplaceholder.typicode.com/posts/1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Post.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}