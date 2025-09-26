import 'package:flutter/material.dart';

class SwitchingWidget extends StatefulWidget {
  const SwitchingWidget({super.key});

  @override
  State<SwitchingWidget> createState() => _SwitchingWidgetState();
}

class _SwitchingWidgetState extends State<SwitchingWidget> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('test', style: TextStyle(fontSize: 28)),
        Switch(
          // This bool value toggles the switch.
          value: light,
          activeColor: Colors.red,
          onChanged: (bool value) {
            // This is called when the user toggles the switch.
            setState(() {
              light = value;
            });
          },
        ),
      ],
    );
  }
}
