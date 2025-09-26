import 'package:flutter/material.dart';

class CircularProgWidget extends StatelessWidget {
  const CircularProgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularProgressIndicator(
          value: 1,
          valueColor: AlwaysStoppedAnimation(Colors.green),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: 100,
          child: LinearProgressIndicator(backgroundColor: Colors.grey,),
        ),
      ],
    );
  }
}
