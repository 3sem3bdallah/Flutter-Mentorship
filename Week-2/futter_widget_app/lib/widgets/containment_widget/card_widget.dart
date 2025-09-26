import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        TextButton(
          child: const Text('BUY TICKETS'),
          onPressed: () {
            /* ... */
          },
        ),
        const SizedBox(width: 8),
        TextButton(
          child: const Text('LISTEN'),
          onPressed: () {
            /* ... */
          },
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
