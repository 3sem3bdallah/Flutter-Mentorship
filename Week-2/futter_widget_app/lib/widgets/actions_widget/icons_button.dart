import 'package:flutter/material.dart';

class IconsButton extends StatefulWidget {
  const IconsButton({super.key});

  @override
  State<IconsButton> createState() => _IconsButtonState();
}

class _IconsButtonState extends State<IconsButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // IconButton
        IconButton(
          iconSize: 72,
          color: Colors.red,
          highlightColor: Colors.blue,
          icon: const Icon(Icons.favorite),
          onPressed: () {
            // ...
          },
        ),
      ],
    );
  }
}
