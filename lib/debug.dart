import "package:flutter/material.dart";

class DebugScreen extends StatelessWidget {
  const DebugScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("디버그 스크린"),
      ),
    );
  }
}
