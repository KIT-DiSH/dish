import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sample screen"),
      ),
      body: SafeArea(
        child: Center(
          child: Text("Search"),
        ),
      ),
    );
  }
}
