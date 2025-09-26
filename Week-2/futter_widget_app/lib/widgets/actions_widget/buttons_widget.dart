import 'package:flutter/material.dart';

class ButtonsWidget extends StatefulWidget {
  const ButtonsWidget({super.key});

  @override
  State<ButtonsWidget> createState() => _ButtonsWidgetState();
}

class _ButtonsWidgetState extends State<ButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ElevatedButton
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Colors.blueAccent),
            ),
            child: Text('Elevated', style: TextStyle(color: Colors.white)),
            onPressed: () {},
          ),
          SizedBox(width: 5),
          // FilledButton
          FilledButton(
            child: Text('Filled', style: TextStyle(color: Colors.white)),
            onPressed: () {},
          ),
          SizedBox(width: 5),
          // OutlinedButton
          OutlinedButton(
            onPressed: () {
              debugPrint('Received click');
            },
            child: const Text('Outlined'),
          ),
          // TextButton
          SizedBox(width: 5),
          TextButton(
            style: ButtonStyle(),
            child: const Text('Text'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
