// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import 'package:flutter/material.dart';

class Player {
  String? name; // ? : name을 가질수도, 아닐수도
  // Player({required this.name});
  Player();
}

void main() {
  // var nico = Player(name: "potato");
  var nico = Player();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // root Widget
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 99,
          centerTitle: false,
          title: Text('Hello Flutter!'),
        ),
        body: Center(
          child: Text('Hello!'),
        ),
      ),
    );
  }
}
