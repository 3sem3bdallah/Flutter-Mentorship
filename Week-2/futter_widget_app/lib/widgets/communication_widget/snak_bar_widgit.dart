import 'package:flutter/material.dart';

class SnakBarWidgit extends StatelessWidget {
  const SnakBarWidgit({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text('Show Snackbar'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Awesome Snackbar!'),
                action: SnackBarAction(
                  backgroundColor: Colors.amber,
                  textColor: Colors.black,
                  label: 'Action',
                  onPressed: () {
                    // Code to execute.
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
