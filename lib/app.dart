import "package:flutter/material.dart";

// import "package:magnet/debug.dart";

import "package:magnet/screens/pivot_home.dart";

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PivotHome(),
    );
  }
}
