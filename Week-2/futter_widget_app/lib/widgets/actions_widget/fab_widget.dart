import 'package:flutter/material.dart';

class FabWidget extends StatefulWidget {
  const FabWidget({super.key});

  @override
  State<FabWidget> createState() => _FabWidgetState();
}

class _FabWidgetState extends State<FabWidget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.amberAccent,
      isExtended: true,
      shape: CircleBorder(),
      child: Icon(Icons.add),
      onPressed: () {},
    );
  }
}
