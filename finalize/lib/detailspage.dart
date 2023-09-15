import 'package:finalize/models.dart';
import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {
   DetailsPage({super.key, required this.yousef});

  final Players yousef;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Second Page")),
      ),
      body: Center(child: Column(
        children: [
           Image.network(yousef.imgUrl),
          Container(
            margin: EdgeInsets.fromLTRB(30, 100, 30, 10),
             child: Text(yousef.name)),
        Text(yousef.price)
        ],
      )),
    );
  }
}