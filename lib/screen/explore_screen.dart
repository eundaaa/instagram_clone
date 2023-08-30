import 'package:flutter/material.dart';
import '/screen/home_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('탐색'),
      ),
      body: GridPostCard(),
    );
  }
}

class GridPostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GridPostCardDetail()),
            );
          },
          child: Container(
            color: Colors.grey,
            child: Center(
              child: Image.network('https://placekitten.com/200/500'),
            ),
          ),
        );
      },
    );
  }
}

class GridPostCardDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('정보'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Divider(),
            PostCard(),
            PostCard(),
            PostCard(),
            // Add more PostCard widgets
          ],
        ),
      ),
    );
  }
}
