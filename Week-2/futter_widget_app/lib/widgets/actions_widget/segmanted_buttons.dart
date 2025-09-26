import 'package:flutter/material.dart';

class SegmantedButtons extends StatefulWidget {
  const SegmantedButtons({super.key});

  @override
  State<SegmantedButtons> createState() => _SegmantedButtonsState();
}

enum Sizes { small, medium, large }

class _SegmantedButtonsState extends State<SegmantedButtons> {
  Set<Sizes> selection = <Sizes>{Sizes.large, Sizes.small};

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SegmentedButton(
            multiSelectionEnabled: true,
            segments: const <ButtonSegment<Sizes>>[
              ButtonSegment<Sizes>(value: Sizes.small, label: Text('Songs')),
              ButtonSegment<Sizes>(value: Sizes.medium, label: Text('Albums')),
              ButtonSegment<Sizes>(value: Sizes.large, label: Text('podcast')),
            ],
            selected: selection,
            onSelectionChanged: (Set<Sizes> newSelection) {
              setState(() {
                selection = newSelection;
              });
            },
          ),
        ],
      ),
    );
  }
}
